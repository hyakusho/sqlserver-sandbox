# README

## 初期設定
- Docker
```
brew tap homebrew/cask-versions
brew cask install docker-edge
```

- Python
```
brew install pyenv
pyenv install
python -V                   # Python 3.8.2
pip install --upgrade pip
```

## Docker
```
docker-compose build [--build-arg SA_PASSWORD=<password>]   # default password: P@ssw0rd!
docker-compose up -d
```

## mssql-cli
```
pip install --upgrade mssql-cli
mssql-cli -S localhost -U SA -P <password>
```

## Docker for MacのTCPポート(2375)をListenする方法
- Server
```
docker run -d --restart=always \
    -p 2376:2375 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    alpine/socat \
    tcp-listen:2375,fork,reuseaddr unix-connect:/var/run/docker.sock
```

- Client
```
docker -H tcp://<host>:2376 ...

OR

docker context create <name> --docker host=tcp://<host>:2376
docker context use <name>   # OR export DOCkER_CONTEXT=<name>
```
