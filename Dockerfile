FROM centos:6.8

ENV APP_ROOT /root

WORKDIR $APP_ROOT

RUN yum install -y gcc && \
    yum install -y git && \
    git clone --depth 1 https://github.com/sstephenson/rbenv.git ~/.rbenv && \
    git clone --depth 1 https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build && \
    ~/.rbenv/plugins/ruby-build/install.sh && \
    yum -y install openssl-devel && \
    yum install -y readline-devel && \
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc && \
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc && \
    source ~/.bashrc && \
    rbenv install 2.3.0 && \
    rbenv global 2.3.0


#    apt-get install -y nginx \
#                       --no-install-recommends && \
#    rm -rf /var/lib/apt/lists/*

#COPY Gemfile $APP_ROOT
#COPY Gemfile.lock $APP_ROOT

#RUN \
#  echo 'gem: --no-document' >> ~/.gemrc && \
#  cp ~/.gemrc /etc/gemrc && \
#  chmod uog+r /etc/gemrc && \
#  bundle config --global build.nokogiri --use-system-libraries && \
#  bundle config --global jobs 4 && \
#  bundle install && \
#  rm -rf ~/.gem

