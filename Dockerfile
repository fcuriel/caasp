FROM opensuse:latest

WORKDIR /app

ADD . /app

RUN zypper -n in python3-pip

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

CMD ["python3", "app.py"]
