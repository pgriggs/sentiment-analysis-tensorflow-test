FROM python:2.7-slim
WORKDIR /
COPY . /
RUN pip install --trusted-host pypi.python.org -r requirements.txt
EXPOSE 80
CMD ["python", "entrypoint.py"]