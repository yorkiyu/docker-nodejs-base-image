FROM yorkyucn/docker-centos-base-image:latest 

LABEL maintainer="yorkyu.cn"

# 配置 Node.js 版本信息 
ENV NODE_VERSION="v12.19.0" \
    NODE_DISTRO="linux-x64"

# 解压 Node.js
ADD "./lib/node-${NODE_VERSION}-${NODE_DISTRO}.tar.xz" /usr/local/services/
# 配置 Node.js 运行环境变量
ENV PATH="/usr/local/services/node-${NODE_VERSION}-${NODE_DISTRO}/bin:${PATH}"

# 安装 pm2
RUN npm install pm2 -g