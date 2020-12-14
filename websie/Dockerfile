FROM python:3.8.6-buster

ADD . /app

RUN pip3 install flask requests objectpath
EXPOSE 5000

ENTRYPOINT ["python3","app.py"]
