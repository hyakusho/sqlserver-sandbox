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
brew install socat
socat -d TCP-LISTEN:2375,range=192.168.1.0/24,reuseaddr,fork UNIX:/var/run/docker.sock
```

- Client
```
docker -H tcp://<host>:2375 ...

OR

docker context create <name> --docker host=tcp://<host>:2375
docker context use <name>   # OR export DOCkER_CONTEXT=<name>
```
