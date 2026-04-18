FROM ubuntu:22.04

# Install tools
RUN apt-get update && apt-get install -y qemu-kvm libvirt-daemon-system virtinst bridge-utils

# This allows the build to finish, but /dev/kvm will NOT exist when it runs
