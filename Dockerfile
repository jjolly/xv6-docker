FROM ubuntu:latest

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata && \
    apt-get install -y tmux \
                       git \
                       build-essential \
                       g++-riscv64-linux-gnu \
                       gcc-riscv64-linux-gnu \
                       qemu-system-riscv64 \
                       gdb-multiarch

RUN git clone https://github.com/mit-pdos/xv6-riscv.git

RUN echo "add-auto-load-safe-path /xv6-riscv/.gdbinit" > /root/.gdbinit

CMD cd xv6-riscv && tmux
