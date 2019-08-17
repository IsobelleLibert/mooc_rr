debuerreotype-init rootfs testing 2017-10-03-T09:40:08Z

debuerreotype-minimizing-config rootfs # apply configuration tweaks to make the rootfs minimal and keep it minimal (especially targeted at Docker images, with comments explicitly describing Docker use cases)
debuerreotype-apt-get rootfs update -qq # let's update the package list
debuerreotype-apt-get rootfs dist-upgrade -yqq # let's upgrade any package that would need to be upgraded
debuerreotype-apt-get rootfs install -yqq --no-install-recommends inetutils-ping iproute2 # useful stuff
debuerreotype-slimify rootfs # remove files such as documentation to create an even smaller rootfs (used for creating slim variants of the Docker images, for example)

debuerreotype-tar rootfs - | sha256sum

debuerreotype-tar rootfs - | docker import - alegrand/moocrr_debian_snapshot_slim:20171003T094008Z

docker build -t alegrand/moocrr_debian_snapshot_jupyter:20171209T114814Z ./
