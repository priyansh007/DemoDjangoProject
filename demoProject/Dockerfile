FROM python:3.8.13-bullseye


ARG PGDATABASE
ARG PGHOST
ARG PGPASSWORD
ARG PGPORT
ARG PGUSER
ARG django_secret_key
ARG openai_api_key

ENV PGDATABASE=$PGDATABASE
ENV PGHOST=$PGHOST
ENV PGPASSWORD=$PGPASSWORD
ENV PGPORT=$PGPORT
ENV PGUSER=$PGUSER
ENV django_secret_key=$django_secret_key
ENV openai_api_key=$openai_api_key

ENV PYTHONBUFFERED=1
WORKDIR /demoProject

COPY . .

RUN pip install --upgrade pip 
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]