FROM alpine

WORKDIR /code

COPY ./frontend /code/

RUN apk add npm && npm install

CMD npm run start
