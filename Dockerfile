FROM ubuntu:20.04 AS platform
RUN apt-get update -y && apt-get install -y python3

FROM platform AS server
COPY server.py .
ENTRYPOINT ["./server.py"]

FROM platform AS client
COPY client.py .
ENTRYPOINT ["./client.py"]
