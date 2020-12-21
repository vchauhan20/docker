FROM python:alpine3.7
RUN mkdir /app
WORKDIR /app
COPY . /app
RUN pip3 install -r requirements.txt
RUN chmod +x *.py
ENTRYPOINT ["/app/app.py"]
EXPOSE 5000
CMD [ "app.py" ]
