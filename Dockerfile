FROM ubuntu:latest
MAINTAINER Shelby Shum "sshum@twitter.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["myorg/common/sample/run.py"]