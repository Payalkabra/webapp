FROM python:2.7-slim
ENV http_proxy http://proxy-chain.xxx.com:911/
ENV https_proxy http://proxy-chain.xxx.com:912/
WORKDIR /flask-app
ADD . /flask-app
RUN pip install --proxy=http://127.0.0.1:8000/ -r requirements.txt
ENTRYPOINT ["python"]
CMD ["test2.py"]
