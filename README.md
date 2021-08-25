John's xv6 Image
==============
When you run this image you will be dropped into the xv6-riscv source directory and TMux will be started. It's all up to you at this point. I have not installed anything except the bare essentials. You may want to install your favorite editor like:

    apt install vim

You can start a debugging session with:

    make qemu-gdb

Then switch to another window (`Ctrl-B n`) or create another windows (`Ctrl-B c`) in TMux to run the debugger:

    gdb-multiarch

Now you can step through the code, set breakpoints, etc.
