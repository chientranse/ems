FROM mcr.microsoft.com/mssql/server:2017-CU14-ubuntu

ARG SA_PASSWORD
ARG ACCEPT_EULA
ARG MSSQL_AGENT_ENABLED
ARG MSSQL_PID

ENV SA_PASSWORD $SA_PASSWORD
ENV ACCEPT_EULA $ACCEPT_EULA
ENV MSSQL_AGENT_ENABLED $MSSQL_AGENT_ENABLED
ENV MSSQL_PID $MSSQL_PID

RUN apt-get update

EXPOSE 1433

RUN apt-get install -y netcat

RUN /opt/mssql/bin/sqlservr --setup

CMD ["/opt/mssql/bin/sqlservr"]