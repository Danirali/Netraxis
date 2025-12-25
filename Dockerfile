FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    curl \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app
#RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["python3", "/app/serve/main.py"]