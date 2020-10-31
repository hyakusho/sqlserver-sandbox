FROM mcr.microsoft.com/mssql/server:2017-latest
ARG SA_PASSWORD
ENV \
  ACCEPT_EULA=Y \
  SA_PASSWORD=${SA_PASSWORD:-P@ssw0rd!}
EXPOSE 1433
