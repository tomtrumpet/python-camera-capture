FROM ubuntu

WORKDIR /code

COPY . .

RUN apt-get update && apt-get install -y --fix-missing gphoto2 python3 python3-distutils curl
RUN curl -k "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python3 get-pip.py --user

CMD [ "python3", "./summary.py" ]
