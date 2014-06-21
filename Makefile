HOSTS=-i etc/hosts
TARGETS?=all

PLAYBOOK=site.yml
BOOTSTRAP_PLAYBOOK=bootstrap.yml

ARGS?=--ask-sudo-pass

DEBUG=-vvvv
ANSIBLE_NOCOWS=1
ANSIBLE_BIN=/usr/bin/env ansible-playbook

ALL_FLAGS=${HOSTS} ${ARGS}

install:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${ALL_FLAGS}

debug:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${ALL_FLAGS} ${DEBUG} ${PLAYBOOK}

bootstrap: ARGS=-c paramiko --ask-pass -vvvv
bootstrap:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${BOOTSTRAP_PLAYBOOK} ${ALL_FLAGS}

tags:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} --tags ${TAGS} ${ALL_FLAGS}

debug-tags:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${DEBUG} --tags ${TAGS} ${ALL_FLAGS}

local: TARGETS=local
local:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${ALL_FLAGS}

local-tags: TARGETS=local
local-tags:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${DEBUG} --tags ${TAGS} ${ALL_FLAGS}

local-debug: TARGETS=local
local-debug:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${DEBUG} ${ALL_FLAGS}

ssh-key:
	ssh-copy-id -i ~/.ssh/id_rsa.pub ciarand@${TARGET}

dotfiles:
	TAGS=dotfiles make local-tags

editor:
	TAGS=editor make local-tags

.PHONY: install debug dotfiles dotfiles-debug go go-debug local tags ssh-key
