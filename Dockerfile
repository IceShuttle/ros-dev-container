FROM docker.io/ros:humble
RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install -y wget tmux clangd ripgrep fzf zsh git \
              zsh zsh-autosuggestions zsh-syntax-highlighting zoxide curl \
              ros-humble-rviz2

RUN git clone https://github.com/jeffreytse/zsh-vi-mode.git /root/.zsh-vi-mode

RUN wget https://github.com/neovim/neovim/releases/download/v0.11.4/nvim-linux-x86_64.tar.gz
RUN tar xvf nvim-linux-x86_64.tar.gz --directory=/opt
RUN chmod +x /opt/nvim-linux-x86_64/bin/nvim
RUN ln -s /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim

RUN wget https://github.com/lsd-rs/lsd/releases/download/v1.2.0/lsd_1.2.0_amd64.deb -O lsd.deb
RUN dpkg -i lsd.deb
RUN curl -fsSL https://starship.rs/install.sh | sh -s -- -y

RUN rm lsd.deb nvim-linux-x86_64.tar.gz

COPY ./to_copy/ /root/
RUN echo "source /root/.zsh-vi-mode/zsh-vi-mode.plugin.zsh" >> /root/.zshrc
WORKDIR /workspaces

CMD ["zsh"]

