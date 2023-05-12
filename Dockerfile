from ubuntu

workdir /app
copy requirements.txt /app
copy gramenshilpo/ /app

RUN apt-get update && apt-get install -y python3 python3-pip && \
virtualenv -p python3 venv && \
. venv/bin/activate && \
pip install -r requirements.txt && \
cd gramenshilpo

EXPOSE 8000

CMD ["manage.py", "runserver", "0.0.0.0:8000"]
