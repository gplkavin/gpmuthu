if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/gplkavin/gpmuthu /gpmuthu
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /gpmuthu
fi
cd /KRK-Auto
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python bot.py
