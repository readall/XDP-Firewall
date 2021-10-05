FROM gitpod/workspace-full
RUN wget --no-check-certificate -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add - \
        && add-apt-repository 'deb http://apt.llvm.org/bionic/   llvm-toolchain-bionic-10  main' \
        && sudo apt-get update  && sudo apt-get install -y \
        libconfig-dev \
        libelf-dev  \
        llvm \
        llc \
        && sudo rm -rf /var/lib/apt/lists/*