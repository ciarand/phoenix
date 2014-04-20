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

Credits
-------
The `ruby`, `rbenv`, and `ruby-multi` playbooks are taken almost word-for-word
from [ansible-rbenv-playbook][1].

[1]: https://github.com/leucos/ansible-rbenv-playbook.

Licensed under the MIT license
------------------------------
<p>Copyright © 2014 Ciaran Downey <code@ciarand.me></p>

<p>Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the “Software”), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:</p>

<p>The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.</p>

<p>THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.</p>
