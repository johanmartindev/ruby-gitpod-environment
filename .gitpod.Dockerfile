FROM gitpod/workspace-ruby-3
USER gitpod

RUN sudo apt-get update && \
    sudo apt-get install -y zsh && \
    sudo rm -rf /var/lib/apt/lists/*

RUN sh -c "gem install solargraph -N solargraph-rails -N overcommit -N reek -N brakeman -N rubocop -N rubocop-performance -N rubocop-rails -N rubocop-faker -N rubocop-rspec -N debug -N rufo -N"

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
