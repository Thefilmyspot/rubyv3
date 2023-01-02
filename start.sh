if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Thefilmyspot/rubyv3.git /thefilmyspotruby
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /thefilmyspotruby
fi
cd /thefilmyspotruby
pip3 install -U -r requirements.txt
echo "Starting ThefilmyspotRuby ✅...."
python3 bot.py
