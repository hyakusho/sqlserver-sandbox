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
