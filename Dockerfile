from ubuntu

workdir /app
copy requirements.txt /app
copy gramenshilpo /app

RUN apt-get update && apt-get install -y python3-pip python3-venv && \
python3 -m venv myenv && \
source myenv/bin/activate && \
pip install -r requirements.txt && \
cd gramenshilpo

EXPOSE 8000

CMD ["manage.py", "runserver"]

