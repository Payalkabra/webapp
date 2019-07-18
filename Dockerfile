FROM python:3.6.3

ENV http_proxy http://proxy-chain.xxx.com:911/
ENV https_proxy http://proxy-chain.xxx.com:912/
ENV BIND_PORT 8000
ENV BIND_HOST 127.0.0.1
WORKDIR /flask-app
ADD . /flask-app
RUN pip install -r requirements.txt
EXPOSE $BIND_PORT
ENTRYPOINT ["python"]
CMD ["test2.py"]
