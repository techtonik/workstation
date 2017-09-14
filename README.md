### Shortlist

* git
  * git-extras
    * [git pr](https://github.com/tj/git-extras/blob/master/Commands.md#git-pr)
* mercurial
* vim
* [micro](https://micro-editor.github.io/)
* [WAD](https://github.com/CERN-CERT/WAD)
* TODO: some commandline linkchecker
  * https://pypi.python.org/pypi/existence/0.2.6
    * [ ] patch to work with URLs
* ps_mem
<!-- list above will get extra newlines without this comment before code section -->

    # install globally into /usr/local/bin
    # -O - get filename from URL
    curl -O https://raw.githubusercontent.com/pixelb/ps_mem/master/ps_mem.py && chmod +x ps_mem.py && sudo mv ps_mem.py /usr/local/bin/

### Gateways

* 86.57.247.127

### Goals

* gather scenarios on how to quickly prepare (development)
environment for different tasks

* improve user experience for such scenarios

* collect list of those "different tasks"

### Workstation

..is a box (deck) with some operating system and personal
tools to do the job.

The basic stuff I expect to see on every Linux machine is
listed in [Shortlist](#shortlist)

Some dependencies are non-crossplatorm. For example, on
Windows I want vim replaced with Far Manager + Colorer.

Below are these requirements adapted for the clean
installs of some operating systems.

##### Workstation: Linux, Fedora 17

 * git
 * hg
 * vim

 * google-chrome


### Bootstraping workstations

* [README.Ansible](README.Ansible.md) - ..Ansible
* [README.Chef](README.Chef.md) - ..Chef Solo on Linux
  
[Chef Solo](https://docs.chef.io/chef_solo.html) is a
standalone tool of Chef framework, a limited alternative
to full Chef client/server.

I use Ansible, because it is written in Python and
doesn't run any services on my workstation.
