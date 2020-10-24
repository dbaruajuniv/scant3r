FROM python:3.7-alpine
WORKDIR /home/scant3r
COPY . /home/scant3r
RUN pip install -r /home/scant3r/requirements.txt
ENTRYPOINT ['python','scant3r.py']
