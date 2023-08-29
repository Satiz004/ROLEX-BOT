if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/yogi444/ROLEX-BOT.git /ROLEX-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ROLEX-BOT
fi
cd /ROLEX-BOT
pip3 install -U -r requirements.txt
echo "Starting ROLEX-BOT...."
python3 bot.py
