#Dont change anything without informing us
if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/InvizHer/Evaa.git /TG_BOTZ
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Evaa
fi
cd /TG_BOTZ
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
