FROM python:3.6.3
WORKDIR /flask-app
ADD . /flask-app
RUN pip install -r requirements.txt
CMD ["python","test2.py","--host = 0.0.0.0"]
