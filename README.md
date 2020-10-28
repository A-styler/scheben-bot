# scheben-bot
Travel bot for your enjoy!
## Requirements
* Docker
* Docker-compose
* Traefik
* Telegram bot
* Pointed to your server domain for LetsEncrypt SSL

## Setup
1) Clone this repo
```
git clone https://github.com/A-styler/scheben-bot.git && cd scheben-bot
```
2) You need to copy main files:
```cp docker-compose.yml.example docker-compose.yml```
3) Type your domain for webhooks into this docker-compose.yml
```
...
labels:
...
  traefik.http.routers.scheben.rule: 'Host(`your-domain`)'
  ...
  traefik.http.routers.scheben-ssl.rule: 'Host(`your-domain`)'
...
```
4) Copy config:
```
cp app/config.ini.example app/config.ini
```
5) Change your telegram bot token and domain inside it.
6) Run docker-composer:
```
docker-compose up
```
