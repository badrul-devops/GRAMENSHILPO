from ubuntu
workdir /app
copy requirements.txt /app
copy gramenshilpo /app
RUN apt-get update && apt-get install -y python3 python3-pip && \
pip3 install -r requirements.txt && \
cd gramenshilpo

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:8000"]
