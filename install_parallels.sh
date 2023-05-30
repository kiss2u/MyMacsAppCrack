#!/usr/bin/env bash

BASE_PATH=$(
  cd $(dirname "$0")
  pwd
)

COLOR_INFO='\033[0;34m'
COLOR_ERR='\033[0;35m'
NOCOLOR='\033[0m'

PDFM_DIR="/Applications/Parallels Desktop.app"
PDFM_VER="18.3.0-53606"

PDFM_LIB="${PDFM_DIR}/Contents/Frameworks/QtXml.framework/Versions/5/QtXml"
PDFM_LIB_DST="${PDFM_DIR}/Contents/Frameworks/QtXml.framework/Versions/5/QtXml_Original"

LICENSE_FILE="${BASE_PATH}/licenses.json"
LICENSE_DST="/Library/Preferences/Parallels/licenses.json"

LICENSE_HASH="ac735f3ee7ac815539f07e68561baceda858cf7ac5887feae863f10a60db3d79"

echo "确保你的版本是: https://download.parallels.com/desktop/v18/${PDFM_VER}/ParallelsDesktop-${PDFM_VER}.dmg"

# check parallels desktop install
if [ ! -d "${PDFM_DIR}" ]; then
  echo -e "${COLOR_ERR}[-] 没找到 ${PDFM_DIR}, 你确实安装了 Parallels Desktop ${PDFM_VER}吗?${NOCOLOR}"
  echo "    来这里下载最新版本: https://download.parallels.com/desktop/v18/${PDFM_VER}/ParallelsDesktop-${PDFM_VER}.dmg"
  exit 1
fi

# check parallels desktop version
VERSION_1=$(defaults read "${PDFM_DIR}/Contents/Info.plist" CFBundleShortVersionString)
VERSION_2=$(defaults read "${PDFM_DIR}/Contents/Info.plist" CFBundleVersion)
INSTALL_VER="${VERSION_1}-${VERSION_2}"
if [ "${PDFM_VER}" != "${VERSION_1}-${VERSION_2}" ]; then
  echo -e "${COLOR_ERR}[-] 这个破解补丁适用于 ${PDFM_VER}, 但你安装的是 ${INSTALL_VER}.${NOCOLOR}"
  echo "    来这里下载兼容版本: https://download.parallels.com/desktop/v18/${PDFM_VER}/ParallelsDesktop-${PDFM_VER}.dmg"
  exit 2
fi

# check licenses.json hash
FILE_HASH=$(shasum -a 256 -b "${LICENSE_FILE}" | awk '{print $1}')
if [ "${FILE_HASH}" != "${LICENSE_HASH}" ]; then
  echo -e "${COLOR_ERR}[-] ${FILE_HASH} != ${LICENSE_HASH}${NOCOLOR}"
  echo -e "${COLOR_ERR}[-] 验证破解授权文件 (licenses.json) 哈希值错误.${NOCOLOR}"
  echo -e "${COLOR_ERR}[-] 怀疑被第三方修改，请重新下载最新版破解补丁.${NOCOLOR}"
  exit 4
fi

# check root permission
if [ "$EUID" -ne 0 ]; then
  echo -e "${COLOR_ERR}[-] 没有Root权限, 用sudo执行脚本,请输入管理员密码:${NOCOLOR}"
  exec sudo "$0" "$@"
  exit $?
fi

# if prl_disp_service running, stop it
if pgrep -x "prl_disp_service" >/dev/null; then
  echo -e "${COLOR_INFO}[*] 停止Parallels Service服务...${NOCOLOR}"
  "${PDFM_DIR}/Contents/MacOS/Parallels Service" service_stop >/dev/null
fi

echo -e "${COLOR_INFO}[*] 注入文件到Parallels Desktop...${NOCOLOR}"

cp "${PDFM_LIB}" "${PDFM_LIB_DST}"

defaults write /Library/Preferences/com.apple.security.libraryvalidation.plist DisableLibraryValidation -bool true

"${BASE_PATH}/Tools/insert_dylib" "${BASE_PATH}/Tools/libInlineInjectPlugin.dylib" "${PDFM_LIB_DST}" "${PDFM_LIB}"

echo -e "${COLOR_INFO}[*] 复制伪造的授权文件 licenses.json${NOCOLOR}"

if [ -f "${LICENSE_DST}" ]; then
  chflags -R 0 "${LICENSE_DST}" || {
    echo -e "${COLOR_ERR}error $? at line $LINENO.${NOCOLOR}"
    exit $?
  }
  rm -f "${LICENSE_DST}" >/dev/null || {
    echo -e "${COLOR_ERR}error $? at line $LINENO.${NOCOLOR}"
    exit $?
  }
fi

cp -f "${LICENSE_FILE}" "${LICENSE_DST}" || {
  echo -e "${COLOR_ERR}error $? at line $LINENO.${NOCOLOR}"
  exit $?
}
chown root:wheel "${LICENSE_DST}" || {
  echo -e "${COLOR_ERR}error $? at line $LINENO.${NOCOLOR}"
  exit $?
}
chmod 444 "${LICENSE_DST}" || {
  echo -e "${COLOR_ERR}error $? at line $LINENO.${NOCOLOR}"
  exit $?
}
chflags -R 0 "${LICENSE_DST}" || {
  echo -e "${COLOR_ERR}error $? at line $LINENO.${NOCOLOR}"
  exit $?
}
chflags uchg "${LICENSE_DST}" || {
  echo -e "${COLOR_ERR}error $? at line $LINENO.${NOCOLOR}"
  exit $?
}
chflags schg "${LICENSE_DST}" || {
  echo -e "${COLOR_ERR}error $? at line $LINENO.${NOCOLOR}"
  exit $?
}

# check hash
FILE_HASH=$(shasum -a 256 -b "${LICENSE_DST}" | awk '{print $1}')
if [ "${FILE_HASH}" != "${LICENSE_HASH}" ]; then
  echo -e "${COLOR_ERR}[-] ${FILE_HASH} != ${LICENSE_HASH}${NOCOLOR}"
  echo -e "${COLOR_ERR}[-] 验证目标文件 (${LICENSE_DST}) 哈希值错误.${NOCOLOR}"
  exit 1
fi

echo -e "${COLOR_INFO}[*] 退出Parallels Desktop账户 ...${NOCOLOR}"
"${PDFM_DIR}/Contents/MacOS/prlsrvctl" web-portal signout &>/dev/null

echo -e "${COLOR_INFO}[*] 关闭CEP...${NOCOLOR}"
"${PDFM_DIR}/Contents/MacOS/prlsrvctl" set --cep off &>/dev/null
"${PDFM_DIR}/Contents/MacOS/prlsrvctl" set --allow-attach-screenshots off &>/dev/null

echo -e "${COLOR_INFO}[*] 破解完成。${NOCOLOR}"
