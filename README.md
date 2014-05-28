Phoenix
=======
>A set of Ansible playbooks for configuring a development PC

Prerequisites
-------------
Works on Mac OS X and Debian. On a Debian machine it doesn't expect much outside
of the base config and a working SSH connection. On a Mac it needs Homebrew
([brew.sh][brew]) and maybe some other stuff like Xcode CLI tools. I don't have
a fresh installation to test with so you're kind of on your own for that one.

[brew]: http://brew.sh

Running
-------
```bash
make install
```

See the Makefile for other targets.

What does it do?
----------------
- Bootstraps a machine (SSH keys, sudoers file, etc.)

- Installs dotfiles (see the dotfile / shell roles and the [dotfiles][] folder)

- Installs a full version of Vim (compiling it if necessary)

- Installs VirtualBox, packer, and vagrant

- Sets up a working Ruby environment complete with rbenv and 4 or so Rubies

- Sets up a working Go environment (from source) and installs some basic bins

- Installs Java (openjdk on Debian)

- Sets up a working Clojure environment with lein

- Sets up a working Scala environment + sbt

- Sets up a working PHP environment with 5.3 through 5.5, phpdbg, and composer

- Replicates these scripts (repo included) to the target machine, installs the
  latest version of Ansible

- Installs some essential apps in Debian (Chromium, Spotify, etc.)

[dotfiles]: /dotfiles

Wishlist
--------
- Better checking for "changed" stuff

- Better separation of languages - e.g. lua should be its own playbook

- Quicker git repo checks; making an HTTP request takes too long

- Setup a working Docker environment

- Setup a working Node environment with nvm

- Maybe setup a working .NET environment

- Check to make sure all required services are enabled

- Setup a decent set of system-wide fonts (Google's, Powerline, etc.)

- Setup any cron jobs that need setting up

- Setup tarsnap

- Figure out a way of handling private-key transfers

- Add some desktop-specific settings (OpenBox?)

- Switch to luakit browser, customize it

- Bitlbee

- Figure out how to handle irssi auth

- Better password security (convert 1password to password-store?)

- Either setup mutt or find a cross platform email solution

- Change shell prompt to show hostname

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
