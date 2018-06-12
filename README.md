## Purpose
This is intended to provide support for [https://www.freedesktop.org/wiki/Specifications/BootLoaderSpec/](freedesktop-style /boot) in Debian.
TODO: GRUB is not yet integrated (it does not yet understand freedesktop-style boot entries).

Freedesktop-style /boot, while proposed by the systemd clique, is not in any way related to nor dependent on systemd.

As of now `/e/k/post{inst,rm}.d/zz-freedesktop-kernel-install` are the same.
They're not merged for now, but probably will in the future.
They make use of the `kernel-install` utility and related scripts in `/lib/kernel/install.d`, which are maintained as part of systemd and are GPL AFAIK. This dependency can be circumvented by either borrowing or reimplementing the functionality.

## Usage summary
`# make install`
`# apt-get install linux-image-$(uname -r)` or `# dpkg-reconfigure linux-image-$(uname -r)`

You now have mainline configuration for _any compliant bootloader_.

Gummiboot (aka systemd-boot) is an example of a compliant bootloader.
If your system supports gummiboot,`bootctl install` is sufficient to make it work.

## Legal notice
This set of scripts is in the public domain.
Feel free to include them with a product, Debianize them further, whatever.

