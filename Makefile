ANSIBLE_BIN=/usr/bin/env ansible-playbook
ANSIBLE_OPTS=-i etc/hosts --ask-sudo-pass
PLAYBOOK=site.yml

install:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} ${PLAYBOOK}

debug:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} -vvvv ${PLAYBOOK}

dotfiles:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} --tags "dotfiles" ${PLAYBOOK}

dotfiles-debug:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} -vvvv --tags "dotfiles" ${PLAYBOOK}

go:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} --tags "go" ${PLAYBOOK}

go-debug:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} -vvvv --tags "go" ${PLAYBOOK}

.PHONY: dotfiles dotfiles-debug
