ANSIBLE_BIN=ANSIBLE_NOCOWS=1 /usr/bin/env ansible-playbook
HOSTS=-i etc/hosts
PLAYBOOK=site.yml
ARGS=--ask-sudo-pass

install:
	${ANSIBLE_BIN} ${HOSTS} ${PLAYBOOK} ${ARGS}

debug:
	${ANSIBLE_BIN} ${HOSTS} -vvvv ${PLAYBOOK} ${ARGS}

dotfiles:
	${ANSIBLE_BIN} ${HOSTS} --tags "dotfiles" ${PLAYBOOK} ${ARGS}

dotfiles-debug:
	${ANSIBLE_BIN} ${HOSTS} -vvvv --tags "dotfiles" ${PLAYBOOK} ${ARGS}

go:
	${ANSIBLE_BIN} ${HOSTS} --tags "go" ${PLAYBOOK} ${ARGS}

go-debug:
	${ANSIBLE_BIN} ${HOSTS} -vvvv --tags "go" ${PLAYBOOK} ${ARGS}

local:
	${ANSIBLE_BIN} ${HOSTS} ${PLAYBOOK} ${ARGS}

tags:
	${ANSIBLE_BIN} ${HOSTS} ${PLAYBOOK} --tags ${TAGS} ${ARGS}

editor:
	TAGS=editor make tags

.PHONY: install debug dotfiles dotfiles-debug go go-debug local tags
