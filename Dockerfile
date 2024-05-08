FROM amazonlinux

WORKDIR /app

COPY requirements.txt .

RUN python3 -m venv .venv
RUN .venv/bin/pip3 install -r requirements.txt

COPY bot.py .

CMD [".venv/bin/python3", "bot.py"]


