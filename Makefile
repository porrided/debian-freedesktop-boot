install:
	install etc/kernel/postinst.d/zz-freedesktop-kernel-install /etc/kernel/postinst.d
	install etc/kernel/postrm.d/zz-freedesktop-kernel-install /etc/kernel/postrm.d

uninstall:
	rm -f /etc/kernel/{postinst,rm}.d/zz-freedesktop-kernel-install

.PHONY: install uninstall
