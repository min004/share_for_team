FROM postgres:15.1

ENV POSTGRES_DB teamb
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD 0000
ENV POSTGRES_HOST postgres

COPY teamb /Project_login.sql

EXPOSE 5432

CMD ["postgres"]