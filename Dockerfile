FROM python:3.7-alpine3.7

# work dir
WORKDIR /app

# add current file
ADD . .

# install package
RUN pip install -r ./requirements.txt

# expose 5000 to outside of the docker container
EXPOSE 5000

# run this app server
CMD ["python","app.py"]