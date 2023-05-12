from python3:latest
workdir /app
copy requirements.txt /app
copy gramenshilpo /app

RUN virtualenv -p python3 env && \
source env/bin/activate && \
pip3 install -r requirements.txt && \
cd gramenshilpo

EXPOSE 8000

CMD ["manage.py", "runserver", "0.0.0.0:8000"]
