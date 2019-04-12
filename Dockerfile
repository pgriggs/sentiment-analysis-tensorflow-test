FROM tensorflow/tensorflow:latest-gpu

WORKDIR /model
COPY . /model

RUN pip install --upgrade pip && \
    pip install -r requirements.txt

ENTRYPOINT ["python", "entrypoint.py"]