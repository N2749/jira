# syntax=docker/dockerfile:1.4

FROM python:3.10.0-slim-buster

WORKDIR /jira

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . /jira

CMD ["python", "manage.py", "runserver", "0:8080"]
EXPOSE 8080
