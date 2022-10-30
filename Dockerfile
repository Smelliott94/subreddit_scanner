FROM python:3.8-slim-buster
WORKDIR .
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
EXPOSE 8000
ENTRYPOINT ["python3", "-m", "uvicorn", "main:app", "--host=0.0.0.0"]