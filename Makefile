HOSTS=-i etc/hosts
TARGETS=all

PLAYBOOK=site.yml
BOOTSTRAP_PLAYBOOK=bootstrap.yml

ARGS=--ask-sudo-pass

ANSIBLE_NOCOWS=1
ANSIBLE_BIN=/usr/bin/env ansible-playbook

ALL_FLAGS=${HOSTS} ${ARGS}

install:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${ALL_FLAGS}

debug:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${ALL_FLAGS} -vvvv ${PLAYBOOK}

bootstrap:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${BOOTSTRAP_PLAYBOOK} ${ALL_FLAGS}

tags:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} --tags ${TAGS} ${ALL_FLAGS}

debug-tags:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} -vvvv --tags ${TAGS} ${ALL_FLAGS}

local: TARGETS=local
local:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${ALL_FLAGS}

local-tags: TARGETS=local
local-tags:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} -vvvv --tags ${TAGS} ${ALL_FLAGS}

local-debug: TARGETS=local
local-debug:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} -vvvv ${ALL_FLAGS}

ssh-key:
	ssh-copy-id -i ~/.ssh/id_rsa.pub ciarand@${TARGET}

.PHONY: install debug dotfiles dotfiles-debug go go-debug local tags ssh-key
