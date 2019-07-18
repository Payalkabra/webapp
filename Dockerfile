FROM python:2.7-slim
ENV http_proxy http://proxy-chain.xxx.com:911/
ENV https_proxy http://proxy-chain.xxx.com:912/
WORKDIR /flask-app
ADD . /flask-app
RUN pip install --trusted-host pypi.python.org -r requirements.txt
ENTRYPOINT ["python"]
CMD ["test2.py"]
