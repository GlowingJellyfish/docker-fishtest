FROM archlinux:latest

# base system + tools
RUN pacman-key --init && \
  pacman-key --populate archlinux && \
  pacman -Sy --noconfirm archlinux-keyring && \
  pacman -Syu --noconfirm && \
  pacman -S --noconfirm git vim python make gcc curl wget clang llvm

# install gosu for signals
ENV GOSU_VERSION=1.19

RUN curl -Lo /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-amd64" && \
  chmod +x /usr/local/bin/gosu

# updater stays as root
COPY updater.sh /updater.sh
RUN chmod +x /updater.sh

# make worker user
RUN useradd --create-home --shell /bin/bash worker
WORKDIR /home/worker

COPY run_workers.sh .
RUN chmod +x run_workers.sh

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV NUM_WORKERS=${NUM_WORKERS}
ENV WORKER_CONFIG=${WORKER_CONFIG}

# run updater in background and then start your workers
ENTRYPOINT ["/entrypoint.sh"]
CMD ["./run_workers.sh"]
