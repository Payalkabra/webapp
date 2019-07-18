FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y python \ 
    python-pip
ADD . /flask-app
WORKDIR /flask-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["test2.py"]
