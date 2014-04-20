Phoenix
=======
>A set of Ansible playbooks for configuring a (Debian) development PC

To run:

```bash
ansible-playbook site.yml -i ./etc/hosts --ask-sudo-pass
```

TODO:
-----
* Dotfiles
* Contribute fixes back to ansible-rbenv-playbook
* Include more core programs (Chromium, HipChat, Spotify, etc.)
* Include more languages w/ version managers (nvm, gvm, php, clojure, etc.)
* Include fonts (Google, powerline, maybe others)
* Include backup management of some sort (tarsnap?)
* Include a way of pulling changes in on the same PC (pull mode?)
* Virtualization role (VirtualBox, Vagrant, Packer, etc.)
* Sanity checks on file permissions (.ssh, etc.)
* Configuration files (sshd_config)
* Tags
* More of the programs I use (ctags, sqlite, ant, irssi, and so on)
* Integration with OpenBox
* Refactor variables like ruby versions into group_vars
* Consider using Debian testing
* Disk encryption
* Cron jobs (like refreshing this repo every day)
* Alternative terminal?
* rbenv-rehash and other important plugins

Credits
-------
The `ruby`, `rbenv`, and `ruby-multi` playbooks are taken almost word-for-word
from [ansible-rbenv-playbook][1].

[1]: https://github.com/leucos/ansible-rbenv-playbook

License
-------
It's MIT licensed. See the [LICENSE][license] file for more information.

[license]: /LICENSE
