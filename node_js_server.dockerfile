FROM node:18-alpine
#18 은 node.js 의 version 을 맞추기 위해서 node -v 의 결과와 동일하도록 셋팅

WORKDIR /app_via_docker

COPY package.json package-lock.json ./

# RUN npm install 
RUN npm ci 
# RUN npm ci --silent
    # npm 을 ci 에 version 에 맞추어 install 해
    # npm install 보다 더 좋은 방법이라고 앨리가 가르쳐주었다.

COPY index.js "./"
    # index.js 를 현재 디렉토리로 copy 해

ENTRYPOINT [ "node", "index.js" ]
    # node 명령어로 index.js 를 실행해

