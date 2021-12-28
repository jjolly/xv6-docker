FROM ubuntu:latest

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata

RUN apt-get install -y --no-install-recommends tmux

RUN apt-get install -y --no-install-recommends build-essential
RUN apt-get install -y --no-install-recommends gcc-riscv64-linux-gnu
RUN apt-get install -y --no-install-recommends qemu-system-riscv64
RUN apt-get install -y --no-install-recommends gdb-multiarch

RUN apt-get install -y --no-install-recommends git
RUN apt-get install -y --no-install-recommends ca-certificates

RUN git clone https://github.com/mit-pdos/xv6-riscv.git

RUN echo "add-auto-load-safe-path /xv6-riscv/.gdbinit" > /root/.gdbinit

CMD cd xv6-riscv && tmux
