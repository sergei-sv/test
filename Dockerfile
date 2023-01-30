FROM python:3.9-slim

WORKDIR /app
COPY /parsers/requirements.txt ./
RUN pip install pip --upgrade && pip install --no-cache-dir -r requirements.txt

COPY . /app

CMD ["python3","/app/bots/buycheaper/bot.py"]