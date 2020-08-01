# !/bin/bash
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.bashrc
source ~/.bash_profile
source /etc/profile.d/rvm.sh
mkdir -p ~/.rvm/user
touch ~/.rvm/user/db
echo "ruby_url=https://cache.ruby-china.com/pub/ruby" > ~/.rvm/user/db
rvm install 2.7.0 --disable-binary
rvm use 2.7.0 --default
gem install bundler:2.1.4

