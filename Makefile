ANSIBLE_BIN=/usr/bin/env ansible-playbook
ANSIBLE_OPTS=-i etc/hosts --ask-sudo-pass
ANSIBLE_LOCAL_OPTS=${ANSIBLE_OPTS} --connection=local
PLAYBOOK=site.yml

install:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} ${PLAYBOOK}

debug:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} -vvvv ${PLAYBOOK}

dotfiles:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} --tags "dotfiles" ${PLAYBOOK}

dotfiles-debug:
	${ANSIBLE_BIN} ${ANSIBLE_OPTS} -vvvv --tags "dotfiles" ${PLAYBOOK}

local-install:
	${ANSIBLE_BIN} ${ANSIBLE_LOCAL_OPTS} ${PLAYBOOK}

local-debug:
	${ANSIBLE_BIN} ${ANSIBLE_LOCAL_OPTS} ${PLAYBOOK}

.PHONY: dotfiles dotfiles-debug
