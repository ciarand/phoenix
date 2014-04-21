Phoenix
=======
>A set of Ansible playbooks for configuring a development PC

Prerequisites
-------------
Works on Mac OS X and Debian. On a Debian machine it doesn't expect much outside
of the base config and a working SSH connection. On a Mac it needs Homebrew
([brew.sh][brew]) and maybe some other stuff like Xcode CLI tools.

I'm not your mother.

[brew]: brew.sh

Running
-------
```bash
make install
```

What does it do?
----------------
- Sets up my dotfiles (see the dotfiles role and the [dotfiles][] folder)

- Sets up a working Ruby environment complete with rbenv and 4 or so Rubies

- Sets up a working go environment (from source) and installs some basic bins

[dotfiles]: /dotfiles

What I want it to do
--------------------
- Setup a working PHP environment with 5.3 through 5.6 available

- Setup a working Clojure / ClojureScript environment

- Setup a working Node environment

- Setup a decent set of system-wide fonts (Google's, Powerline, etc.)

- Setup a minimum set of applications via apt or brew-cask (Chrome, Spotify,
  etc.)

- Setup any cron jobs that need setting up

- Setup a consistent backup solution

- Conduct sanity checks on file permissions, config files, etc.

- Add some desktop-specific settings (OpenBox?)

- Setup a working toolset for virtualization (packer, vagrant, VirtualBox)

- Refactor roles into Ansible-galaxy roles

Credits
-------
The `ruby`, `rbenv`, and `ruby-multi` playbooks were originally taken almost
word-for-word from [ansible-rbenv-playbook][1]. They've been modified a little,
but not much.

[1]: https://github.com/leucos/ansible-rbenv-playbook

License
-------
It's MIT licensed. See the [LICENSE][license] file for more information.

[license]: /LICENSE
