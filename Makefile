HOSTS=-i etc/hosts
TARGETS?=all

PLAYBOOK=site.yml
BOOTSTRAP_PLAYBOOK=bootstrap.yml

DEBUG?=
ARGS?=
FINAL_ARGS?=${ARGS} --ask-sudo-pass ${DEBUG}

ANSIBLE_NOCOWS=1
ANSIBLE_BIN=/usr/bin/env ansible-playbook

ALL_FLAGS=${HOSTS} ${FINAL_ARGS}

install:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${DEBUG} ${ALL_FLAGS}

debug:
	DEBUG=-vvvv make install

bootstrap: ARGS=-c paramiko --ask-pass ${DEBUG}
bootstrap:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${BOOTSTRAP_PLAYBOOK} ${ALL_FLAGS}

tags:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} --tags ${TAGS} ${ALL_FLAGS}

debug-tags:
	TAGS=${TAGS} DEBUG=-vvvv make tags

local: TARGETS=local
local:
	ANSIBLE_TARGETS=${TARGETS} make install

local-tags:
	ARGS="--tags ${TAGS}" make local

local-tags-debug:
	DEBUG=-vvvv make local-tags

local-debug: TARGETS=local
local-debug:
	ANSIBLE_TARGETS=${TARGETS} ${ANSIBLE_BIN} ${PLAYBOOK} ${DEBUG} ${ALL_FLAGS}

ssh-key:
	ssh-copy-id -i ~/.ssh/id_rsa.pub ciarand@${TARGET}

dotfiles:
	TAGS=dotfiles make local-tags

editor:
	TAGS=editor make local-tags

editor-debug:
	TAGS=editor make local-tags-debug

.PHONY: install debug dotfiles dotfiles-debug go go-debug local tags ssh-key
