Phoenix
=======
>A set of Ansible playbooks for configuring a development PC

Prerequisites
-------------
Works on Mac OS X and Debian. On a Debian machine it doesn't expect much outside
of the base config and a working SSH connection. On a Mac it needs Homebrew
(<brew.sh>) and maybe some other stuff.

I'm not your mother.

Running
-------
```bash
make install
```

TODO:
-----
- [ ] Contribute fixes back to ansible-rbenv-playbook
- [ ] Include more core programs (Chromium, HipChat, Spotify, etc.)
- [ ] PHP (5.3, 5.4, 5.5, 5.6)
- [ ] Clojure + Lein
- [ ] Node (most recent should be fine)
- [ ] Go binaries (vegeta, docker, tsuru, hugo, etc.)
- [ ] Include fonts (Google, powerline, maybe others)
- [ ] Include backup management of some sort (tarsnap?)
- [ ] Virtualization role (VirtualBox, Vagrant, Packer, etc.)
- [ ] Sanity checks on file permissions (.ssh, etc.)
- [ ] Configuration files (sshd_config)
- [ ] More of the programs I use (ctags, sqlite, ant, irssi, and so on)
- [ ] Integration with OpenBox
- [ ] Refactor variables like ruby versions into group_vars
- [ ] Consider using Debian testing
- [ ] Disk encryption
- [ ] Cron jobs (like refreshing this repo every day)
- [ ] Alternative terminal?
- [x] Go (1.2 should be fine)
- [x] Playbook tags
- [x] rbenv-rehash and other important plugins
- [x] Include a way of pulling changes in on the same PC (pull mode?)
- [x] Dotfiles

Credits
-------
The `ruby`, `rbenv`, and `ruby-multi` playbooks are taken almost word-for-word
from [ansible-rbenv-playbook][1].

[1]: https://github.com/leucos/ansible-rbenv-playbook

License
-------
It's MIT licensed. See the [LICENSE][license] file for more information.

[license]: /LICENSE
