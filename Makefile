PREFIX=/usr/local
APPNAME=ssh-agent-launcher

.PHONY: install uninstall
install: ${APPNAME} plugin-*
	mkdir -p "${PREFIX}/share/${APPNAME}"
	install ${APPNAME} "${PREFIX}/share/${APPNAME}";
	install marker "${PREFIX}/share/${APPNAME}";
	install common-* "${PREFIX}/share/${APPNAME}";
	install plugin-* "${PREFIX}/share/${APPNAME}";
	ln -sf "${PREFIX}/share/${APPNAME}/${APPNAME}" "${PREFIX}/bin/${APPNAME}"

uninstall:
	rm "${PREFIX}/bin/${APPNAME}"
	rm -rf "${PREFIX}/share/${APPNAME}"

