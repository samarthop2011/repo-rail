# 1. You MUST have a base image
FROM ubuntu:22.04

# 2. Prevent the build from getting stuck on regional prompts
ENV DEBIAN_FRONTEND=noninteractive

# 3. Install the tools
RUN apt-get update && apt-get install -y \
    qemu-kvm \
    libvirt-daemon-system \
    virtinst \
    bridge-utils \
    && rm -rf /var/lib/apt/lists/*

# 4. Railway runs as a non-root user sometimes; this helps permissions
RUN chmod 666 /dev/null
