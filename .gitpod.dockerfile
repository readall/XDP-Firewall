FROM gitpod/workspace-full

RUN sudo apt-get update  && sudo apt-get install -y \
        libconfig-dev \
        libelf-dev  \
        && sudo rm -rf /var/lib/apt/lists/*