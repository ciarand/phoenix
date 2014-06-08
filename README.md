Phoenix
=======
>A set of Ansible playbooks for configuring a development PC

Prerequisites
-------------
Works on Mac OS X and Debian and kind of on RedHat. On a Debian machine it
doesn't expect much outside of the base config and a working SSH connection. On
a Mac it needs Homebrew ([brew.sh][brew]) and maybe some other stuff like Xcode
CLI tools. I don't have a fresh installation to test with so you're kind of on
your own for that one.

[brew]: http://brew.sh

Running
-------
```bash
# to install locally
make local
# to install just a specific tag (see site.yml) locally
TAGS=dotfiles make local-tags

# to install on all machines in etc/hosts
make install
# to install just a specific tag (see site.yml) on all machines in etc/hosts
TAGS=dotfiles make install-tags
```

See the Makefile for other targets and stuff. I'm not very good at writing
Makefiles tbh.

What does it do?
----------------
- Bootstraps a machine (SSH keys, sudoers file, etc.)

- Installs dotfiles (see the dotfile / shell roles and the [dotfiles][] folder)

- Installs a full version of Vim (compiling it from scratch pretty mcuh all the
  time)

- Installs VirtualBox, packer, and vagrant

- Sets up a working Ruby environment complete with rbenv and 3 or so Rubies

- Sets up a working Go environment (from source) and installs some basic bins

- Installs Java (openjdk on Debian)

- Sets up a working Clojure environment with lein

- Sets up a working Scala environment + sbt

- Sets up a working PHP environment with 5.3 through 5.5, phpdbg, and composer

- Installs some essential apps in Debian (Chromium, Spotify, etc.)

- Replicates these scripts (repo included) to the target machine, installs the
  latest version of Ansible

[dotfiles]: /dotfiles

Wishlist
--------
- Better checking for "changed" stuff

- Quicker git repo checks; making an HTTP request takes too long

- Setup a working Docker environment

- Setup a working Node environment with nvm

- Maybe setup a working .NET environment

- Check to make sure all required services are enabled

- Setup any cron jobs that need setting up

- Setup tarsnap

- Figure out a way of handling private-key transfers

- Add some desktop-specific settings (awesomewm)

- Conky

- Desktop background

- Nicer, actionable notifications

- Airplay or similar? Maybe using Raspberry Pi

- Switch to luakit browser, customize it

- Bitlbee

- Figure out how to handle irssi auth

- Better password security (convert 1password to password-store?)

- Either setup mutt or find a cross platform email solution

- Change shell prompt to show hostname

Complaints about current Linux distros I've developed along the way
-------------------------------------------------------------------
See the [`COMPLAINTS`][complaints] file.

[complaints]: /COMPLAINTS.md

Credits
-------
The `ruby`, `rbenv`, and `ruby-multi` playbooks were originally taken almost
word-for-word from [ansible-rbenv-playbook][1]. They've been modified a little,
but not much.

The `scala` playbook was stolen from [AnsibleShipyard/ansible-scala][2] and
modified to use more core Ansible modules instead of shell-ing out so much.

[1]: https://github.com/leucos/ansible-rbenv-playbook
[2]: https://github.com/AnsibleShipyard/ansible-scala

License
-------
It's MIT licensed. See the [LICENSE][license] file for more information.

[license]: /LICENSE
