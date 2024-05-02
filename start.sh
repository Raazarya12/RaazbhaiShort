if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/safarideveloper/SAFARI-PREMIUM-BOT.git /SAFARI-PREMIUM-BOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SAFARI-PREMIUM-BOT
fi
cd /SAFARI-PREMIUM-BOT
pip3 install -U -r requirements.txt
echo "Starting SAFARI-PREMIUM-BOT...."
python3 bot.py
