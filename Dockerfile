FROM python:3.6.3
WORKDIR /flask-app
ADD . /flask-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["test2.py"]
