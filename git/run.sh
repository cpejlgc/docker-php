#!/bin/bash

# 环境变量
# GIT_REPO
# GIT_BRANCH
# GIT_CLONE_DIR 
# GIT_RESET_COMMIT 

#更新git代码
if [ ! -d ${GIT_CLONE_DIR}/.git ]; then
    echo 'git clone '${GIT_REPO}' '${GIT_CLONE_DIR}
    git clone ${GIT_REPO} ${GIT_CLONE_DIR}
    cd ${GIT_CLONE_DIR} && git checkout ${GIT_BRANCH}
fi

if [ -n "${GIT_RESET_COMMIT}" ]; then
    echo 'git reset --hard '${GIT_RESET_COMMIT}
    cd ${GIT_CLONE_DIR} && git fetch && git reset --hard ${GIT_RESET_COMMIT}
else
    echo 'git pull origin '${GIT_BRANCH}
    cd ${GIT_CLONE_DIR} && git checkout ${GIT_BRANCH} && git pull origin ${GIT_BRANCH}
fi
