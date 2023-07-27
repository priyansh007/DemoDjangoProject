FROM python:3.8.13-bullseye

ARG secret_key
ARG api_key
ARG PGDATABASE
ARG PGHOST
ARG PGPASSWORD
ARG PGPORT
ARG PGUSER

WORKDIR /demoProject

COPY . .

RUN pip install --upgrade pip 
RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]