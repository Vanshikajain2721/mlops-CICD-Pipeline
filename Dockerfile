FROM python:3.11-slim-buster
WORKDIR /application
Copy . /application

RUN apt update -y && apt install awscli -y

RUN pip install -r requirements.txt
CMD ["python3","application.py"] 