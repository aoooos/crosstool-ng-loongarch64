# crosstool-ng-loongarch64

Build loongarch64-unknown-linux-gnu toolchain with crosstool-ng. These instructions are applicable for Debian-based systems.



How to use:

1. Run `sudo sh cross-apt-packages.sh` to install essential dependencies.
2. Run `sudo sh crosstool-ng-git.sh` to install crosstool-ng.
3. Run `sh crosstool-ng-build.sh` to build loongarch64-unknown-linux-gnu toolchain.
4. After that, you can find your loongarch64-unknown-linux-gnu toolchain at `x-tools/loongarch64-unknown-linux-gnu`.
