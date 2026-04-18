# Install qemu/kvm tools
RUN apt-get update && apt-get install -y qemu-kvm libvirt-daemon-system virtinst bridge-utils

# Attempt to add the railway user to the kvm group
RUN groupadd -g 1000 kvm || true
RUN usermod -aG kvm root
