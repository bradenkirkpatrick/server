python3 -m venv .venv
.venv/bin/pip install -r requirements.txt
redis-server --daemonize yes 
.venv/bin/python  bot.py
redis-cli shutdown
