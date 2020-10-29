FROM mcr.microsoft.com/mssql/server:2017-latest
ENV \
  ACCEPT_EULA=Y \
  SA_PASSWORD=P@ssw0rd
EXPOSE 1433
