# crosstool-ng-loongarch64

Build loongarch64-unknown-linux-gnu toolchain with crosstool-ng.



How to use:

1. run `sudo sh cross-apt-packages.sh` to install essential dependencies.
2. run `sudo sh crosstool-ng-git.sh` to install crosstool-ng.
3. run `sh crosstool-ng-build.sh` to build loongarch64-unknown-linux-gnu toolchain.
4. after that, you can find your loongarch64-unknown-linux-gnu toolchain at `x-tools/loongarch64-unknown-linux-gnu`