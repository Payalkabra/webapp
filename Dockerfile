FROM python:2.7-slim
ADD . /flask-app
WORKDIR /flask-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["test2.py"]
