# README

## Docker
```
docker-compose build [--build-arg SA_PASSWORD=<password>]   # default password: P@ssw0rd!
docker-compose up -d
```

## mssql-cli
```
pip install -r ./requirements.txt --upgrade
mssql-cli -S localhost -U SA -P <password>
```
