#!/bin/bash

BOLD_BLUE='\033[1;34m'
NC='\033[0m'
echo

# 설치할 Node.js 버전 설정 (예: 18.x LTS)
NODE_VERSION="18.x"

if ! command -v node &> /dev/null
then
    echo -e "${BOLD_BLUE}Node.js가 설치되지 않았습니다. Node.js ${NODE_VERSION}를 설치합니다...${NC}"
    echo
    curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | sudo -E bash -
    sudo apt-get install -y nodejs
else
    echo -e "${BOLD_BLUE}Node.js가 이미 설치되어 있습니다.${NC}"
fi
echo
if ! command -v npm &> /dev/null
then
    echo -e "${BOLD_BLUE}npm이 설치되지 않았습니다. npm을 설치합니다...${NC}"
    echo
    sudo apt-get install -y npm
else
    echo -e "${BOLD_BLUE}npm이 이미 설치되어 있습니다.${NC}"
fi
echo
echo -e "${BOLD_BLUE}프로젝트 디렉토리를 생성하고 해당 디렉토리로 이동합니다.${NC}"
mkdir -p SonicBatchTx
cd Soni
