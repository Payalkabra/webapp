FROM python:2.7-slim

ENV http_proxy http://proxy-chain.xxx.com:911/
ENV https_proxy http://proxy-chain.xxx.com:912/
WORKDIR /flask-app
ADD . /flask-app
RUN pip install --index-url=https://pypi.python.org/simple/ -r requirements.txt
ENTRYPOINT ["python"]
CMD ["test2.py"]
