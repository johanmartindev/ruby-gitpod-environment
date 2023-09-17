FROM gitpod/workspace-ruby-3
USER gitpod

RUN sudo apt-get update && \
    sudo apt-get install -y zsh && \
    sudo rm -rf /var/lib/apt/lists/*

RUN "gem install bundler -N webdrivers -N solargraph -N solargraph-rails -N reline -N overcommit -N reek -N brakeman -N rubocop -N rubocop-performance -N rubocop-rails -N rubocop-faker -N rubocop-rspec -N ripper-tags -N better_errors -N debug -N binding_of_caller -N rufo -N scss_lint -N erb_lint -N htmlbeautifier -N"

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
