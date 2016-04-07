PREFIX=/usr/local
APPNAME=ssh-agent-launcher

.PHONY: install uninstall
install: ${APPNAME} plugin-*
	sudo mkdir -p "${PREFIX}/share/${APPNAME}"
	sudo install ${APPNAME} "${PREFIX}/share/${APPNAME}";
	sudo install marker "${PREFIX}/share/${APPNAME}";
	sudo install common-* "${PREFIX}/share/${APPNAME}";
	sudo install plugin-* "${PREFIX}/share/${APPNAME}";
	sudo ln -sf "${PREFIX}/share/${APPNAME}/${APPNAME}" "${PREFIX}/bin/${APPNAME}"

uninstall:
	sudo rm "${PREFIX}/bin/${APPNAME}"
	sudo rm -rf "${PREFIX}/share/${APPNAME}"

