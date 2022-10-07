if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joelthomas12/Evamaria01 /Evamaria01
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Evamaria01
fi
cd /Evamaria01
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
