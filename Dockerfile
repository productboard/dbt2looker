FROM python:3.7

# zsh
RUN apt-get update
RUN apt-get install -y zsh nano
RUN sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
RUN git config --global oh-my-zsh.hide-dirty 1

WORKDIR /dbt2looker/

RUN pip3 install poetry


COPY .  /install/dbt2looker


WORKDIR /install/dbt2looker

RUN poetry install

WORKDIR /dbt2looker/



