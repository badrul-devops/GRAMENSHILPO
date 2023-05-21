FROM python:3
RUN pip install django==4.2.1

WORKDIR /app

COPY . . 



CMD ["python","manage.py","runserver","0.0.0.0:8000"]