LABEL description="ScanT3r - Web Security Scanner"
MAINTAINER "Khaled Nassar knassar702@gmail.com"
FROM python:3.7-alpine
RUN apt update -y && apt upgrade -y
WORKDIR /home/scant3r
COPY requirements.txt .
RUN pip insatll -r requirements.txt
COPY ../scant3r .
CMD ['python3','scant3r.py']
