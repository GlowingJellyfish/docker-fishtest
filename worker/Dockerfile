FROM archlinux:latest

# base system + tools
RUN pacman -Syu --noconfirm && \
  pacman-key --init && \
  pacman-key --populate archlinux && \
  pacman -S --noconfirm \
  git vim python make gcc curl wget clang llvm

# updater stays as root
COPY updater.sh /updater.sh
RUN chmod +x /updater.sh

# make worker user
RUN useradd --create-home --shell /bin/bash worker
WORKDIR /home/worker

COPY run_workers.sh .
RUN chmod +x run_workers.sh


ENV NUM_WORKERS=${NUM_WORKERS}
ENV WORKER_CONFIG=${WORKER_CONFIG}

# run updater in background and then start your workers
CMD ["/bin/bash", "-c", "/updater.sh & exec ./run_workers.sh"]