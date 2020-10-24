LABEL description="ScanT3r - Web Security Scanner"
FROM python:3.7-alpine
RUN apt update -y && apt upgrade -y
WORKDIR /scant3r
COPY requirements.txt .
RUN pip insatll -r requirements.txt
COPY /scant3r .
CMD ['python3','scant3r.py']
