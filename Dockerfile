# 🕮 <YL> 59f6fadb-15c8-4575-bb88-6edc08ee7446.md
FROM python:alpine

# 🕮 <YL> 9e023b1d-29c5-496e-8780-a4e824e076a6.md
ARG FIRA_VERSION=2

RUN apk update
RUN apk add --no-cache --virtual build git wget unzip
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing fontforge

# 🕮 <YL> 69f7191b-d7a1-4b4b-ac8e-fccd74a7a0d4.md

WORKDIR /usr/src/app

# 🕮 <YL> 1b8e94d9-df82-46a2-b1ce-8ca8cb56c458.md
RUN git clone --depth 1 https://github.com/ToxicFrog/Ligaturizer.git /usr/src/app
RUN mkdir -p fonts/fira/distr && \
    wget -O fira.zip https://github.com/tonsky/FiraCode/releases/download/${FIRA_VERSION}/FiraCode_${FIRA_VERSION}.zip && \
    unzip fira.zip 'otf/*' -d fonts/fira/distr && \
    rm fira.zip

RUN apk del build && \
    # 🕮 <YL> 0c8b9c95-67d7-4292-96ec-106b3086b6a8.md
    rm -rf images && \
    rm -rf Makefile
# 🕮 <YL> 1d30c4a7-5362-434f-bbe7-c0d9a5340d61.md
COPY build.py forgeOne.sh forgeAll.sh ./
RUN chmod +x forgeOne.sh && chmod +x forgeAll.sh

# build all fonts by default
CMD ["./forgeAll.sh"]
