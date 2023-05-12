from python:3.9

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

workdir /app
copy requirements.txt /app
copy gramenshilpo /app

RUN pip install -r requirements.txt && \

workdir /app/gramenshilpo

EXPOSE 8000

CMD ["manage.py", "runserver", "0.0.0.0:8000"]
