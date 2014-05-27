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

- Sets up my dotfiles (see the dotfiles role and the [dotfiles][] folder)

- Installs a full version of vim (compiling it if necessary)

- Installs VirtualBox, packer, and vagrant

- Sets up a working Ruby environment complete with rbenv and 4 or so Rubies

- Sets up a working go environment (from source) and installs some basic bins

- Replicates these scripts (repo included) to the target machine, installs the
  latest version of Ansible

- Installs some essential apps in Debian (Chromium, Spotify, etc.)

[dotfiles]: /dotfiles

What I want it to do
--------------------
- Setup a working PHP environment with 5.3 through 5.6 available
    - Include a "global" composer install
    - Include xdebug and phpdbg where applicable
    - Run composer install with the composer.lock from my dotfiles

- Setup a working Clojure / ClojureScript environment
    - lein
    - working JVM I guess
    - closure compiler and ant (needs jvm, unrelated to clojure)

- Setup a working Node environment
    - nvm
    - probably add some tools here (grunt, gulp, jsuglify2++, etc.)

- .NET environment
    - maybe
    - xamarin?

- Setup a decent set of system-wide fonts (Google's, Powerline, etc.)

- Setup any cron jobs that need setting up

- Setup a consistent backup solution

- Conduct sanity checks on file permissions, config files, etc.

- Add some desktop-specific settings (OpenBox?)

- Setup a Docker environment (on Debian at least)

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
