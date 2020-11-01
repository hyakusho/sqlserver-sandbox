# README

## 初期設定
- Docker
```
% brew tap homebrew/versions
% brew cask install docker-edge
```

- Python
```
% brew install pyenv
% pyenv install
% python -V
Python 3.8.2
```

## Docker
```
% docker-compose build [--build-arg SA_PASSWORD=<password>]   # default password: P@ssw0rd!
% docker-compose up -d
```

## mssql-cli
```
% pip install -r ./requirements.txt --upgrade
% mssql-cli -S localhost -U SA -P <password>
```
