FROM python:3.7
RUN mkdir /exploit
WORKDIR /exploit
COPY . /exploit/
RUN pip install -r requirements.txt
RUN chmod -v +x /exploit/entry.sh
ENTRYPOINT ["/bin/bash", "./entry.sh"]
