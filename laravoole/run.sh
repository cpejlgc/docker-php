#!/bin/bash


#初始化工作环境
chmod -R 777 ${LARAVOOLE_WORKER_DIR}/bootstrap/cache
chmod -R 777 ${LARAVOOLE_WORKER_DIR}/storage

# 启动php larvoole 进程
php ${LARAVOOLE_WORKER_DIR}/artisan laravoole start