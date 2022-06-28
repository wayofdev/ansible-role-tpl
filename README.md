<br>

<div align="center">
<img width="456" src="https://raw.githubusercontent.com/wayofdev/ansible-role-tpl/master/assets/logo.gh-light-mode-only.png#gh-light-mode-only">
<img width="456" src="https://raw.githubusercontent.com/wayofdev/ansible-role-tpl/master/assets/logo.gh-dark-mode-only.png#gh-dark-mode-only">
</div>


<br>

<br>

<div align="center">
<a href="https://actions-badge.atrox.dev/wayofdev/ansible-role-tpl/goto"><img alt="Build Status" src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fwayofdev%2Fansible-role-tpl%2Fbadge&style=flat-square"/></a>
<a href="https://galaxy.ansible.com/wayofdev/tpl"><img alt="Ansible Role" src="https://img.shields.io/ansible/role/59587?style=flat-square"/></a>
<a href="https://github.com/wayofdev/ansible-role-tpl/tags"><img src="https://img.shields.io/github/v/tag/wayofdev/ansible-role-tpl?sort=semver&style=flat-square" alt="Latest Version"></a>
<a href="https://galaxy.ansible.com/wayofdev/homebrew"><img alt="Ansible Quality Score" src="https://img.shields.io/ansible/quality/59587?style=flat-square"/></a>
<a href="https://galaxy.ansible.com/wayofdev/homebrew"><img alt="Ansible Role" src="https://img.shields.io/ansible/role/d/59587?style=flat-square"/></a>
<a href="LICENSE"><img src="https://img.shields.io/github/license/wayofdev/ansible-role-tpl.svg?style=flat-square&color=blue" alt="Software License"/></a>
<a href="#"><img alt="Commits since latest release" src="https://img.shields.io/github/commits-since/wayofdev/ansible-role-tpl/latest?style=flat-square"></a>
</div>
<br>

# Ansible Role: Template

This is template, that is used to create roles for wayofdev project.

If you **like/use** this role, please consider **starring** it. Thanks!

<br>

## 🗂 Table of Contents

   * [Directory Tree for Project](#-directory-tree-for-project)
   * [IDE Support](#-ide-support)
   * [Requirements](#-requirements)
   * [Role Variables](#-role-variables)
      * [Structure](#-structure)
   * [Example Playbook](#-example-playbook)
   * [Development](#-development)
   * [Testing](#-testing)
      * [on localhost](#-on-localhost)
      * [over SSH](#-over-ssh)
   * [Dependencies](#-dependencies)
      * [for all](#-for-all)
      * [only macOS](#-only-macos)
      * [only Linux](#-only-linux)
   * [Compatibility](#-compatibility)
   * [License](#-license)
   * [Author Information](#-author-information)
   * [Credits and Resources](#-credits-and-resources)
   * [Contributors](#-contributors)

<br>

## 🌳 Directory Tree for Project

Repository uses default structure, sugested by [Ansible Documentation](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html)

```
├── 📄 Makefile
├── 📄 README.md
├── 🗂 assets
├── 🗂 contrib
│   └── poetry-bin
├── 🗂 defaults
│   └── 📄 main.yml
├── 🗂 files
├── 🗂 handlers
│   └── 📄 main.yml
├── 🗂 meta
│   └── 📄 main.yml
├── 🗂 molecule
│   ├── 🗂 _partials
│   │   ├── 🗂 playbooks
│   │   │   ├── 📄 converge.yml
│   │   │   ├── 🗂 defaults
│   │   │   └── 📄 verify.yml
│   │   ├── 📄 ssh_config
│   │   ├── 🗂 tasks
│   │   │   └── 📄 setup.yml
│   │   └── 🗂 vars
│   │       └── 📄 main.yml
│   ├── 🗂 default
│   │   └── 📄 molecule.yml
│   ├── 🗂 default-macos-on-localhost
│   │   └── 📄 molecule.yml
│   └── 🗂 default-macos-over-ssh
│       └── 📄 molecule.yml
├── 📄 pyproject.toml
├── 📄 requirements.yml
├── 🗂 tasks
│   └── 📄 main.yml
├── 🗂 templates
└── 🗂 vars
    └── 📄 main.yml
```

<br>

## 👨‍💻 IDE Support

Jetbrains products has great ansible language support together with [OrchidE plugin](https://plugins.jetbrains.com/plugin/12626-orchide--ansible-language-support).

> :warning: **Notice**: For ansible language support and autocompletion with [OrchidE](https://www.orchide.dev/pages/dokumentation) following additional `File Type Patterns` should be added.

Open Preferences → Languages & Frameworks → OrchidE → File Type Patterns:

| Ansible Type | Regex Pattern                 | Pattern Type |
| ------------ | ----------------------------- | ------------ |
| RoleTask     | `.*/tasks/.*\.ya?ml`          | Include      |
| RoleTask     | `.*/handlers/.*\.ya?ml`       | Include      |
| Variable     | `.*/tests/defaults/.*\.ya?ml` | Include      |
| Variable     | `.*/defaults/.*\.ya?ml`       | Include      |
| Variable     | `.*/meta/.*\.ya?ml`           | Include      |
| Variable     | `.*/vars/.*\.ya?ml`           | Include      |

<br>

## 📑 Requirements

* Up-to-date version of ansible. During maintenance/development, we stick to ansible versions and will use new features if they are available (and update `meta/main.yml` for the minimum version).
* Compatible OS. See [compatibility](#-compatibility) table.
* Role has dependencies on third-party roles on different operating systems. See `requirements.yml` and [dependencies](#-dependencies) section.

<br>

## 🔧 Role Variables

Available variables are listed below, along with example values (see `defaults/main.yml`). Additional variables are stored in `vars/main.yml`.

<br>

### → Structure

```yaml
---

tpl_key: value
```

<br>

## 📗 Example Playbook

```yaml
---

- hosts: all
  connection: local

  vars:
    tpl_key: value

  roles:
    - wayofdev.homebrew
    - wayofdev.tpl
```

<br>

## ⚙️ Development

To install dependencies and start development you can check contents of our `Makefile`

**Install** [poetry](https://github.com/python-poetry/poetry) using [poetry-bin](https://github.com/gi0baro/poetry-bin) and all dev python dependencies:

```bash
$ make install
```

**Install** only python dependencies, assuming that you already have poetry:

```bash
$ make install-deps
```

**Install** all git hooks:

```bash
$ make hooks
```

**Lint** all role files:

```bash
$ make lint
```

<br>

## 🧪 Testing

You can check `Makefile` to get full list of commands for remote and local testing. For local testing you can use these comands to test whole role or separate tasks:

### → on localhost

> :warning: **Notice**: By defaut all tests are ran against your local machine!

```bash
# run molecule tests on localhost
$ poetry run molecule test --scenario-name default-macos-on-localhost -- -vvv

# or with make command
$ make m-local

# choose which tags will be included
# run tasks that validate config file and does installation
$ export TASK_TAGS="tpl-install,tpl-update"; make m-local

# runs molecule with docker driver
$ poetry run molecule test --scenario-name default -- -vvv

# or with make file
$ make m-linux
```

<br>

### → over SSH

```bash
# run molecule scenarios against remote machines over SSH
# this will need VM setup and configuration
$ poetry run molecule test --scenario-name default-macos-over-ssh -- -vvv

$ make m-remote

# tags also can be passed
$ export TASK_TAGS="tpl-install tpl-update"
$ make m-remote
```

<br>

## 📦 Dependencies

Installation handled by `Makefile` and requirments are defined in `requirements.yml`

### → for all

  - [ansible.community.general](https://docs.ansible.com/ansible/latest/collections/community/general/index.html)

### → only macOS

  - [elliotweiser.osx-command-line-tools](https://galaxy.ansible.com/elliotweiser/osx-command-line-tools/)
  - [wayofdev.homebrew](https://galaxy.ansible.com/wayofdev/homebrew)

### → only Linux

  - [geerlingguy.git](https://galaxy.ansible.com/geerlingguy/git)

<br>

## 🧩 Compatibility

This role has been tested on these systems:

| system / container | tag      |
| :----------------- | -------- |
| macos              | monterey |
| macos              | big-sur  |
| ubuntu             | jammy    |
| ubuntu             | focal    |
| debian             | bullseye |
| debian             | buster   |
| fedora             | 36       |
| fedora             | 35       |
| centos             | 8        |
| centos             | 7        |

<br>

## 🤝 License

[![Licence](https://img.shields.io/github/license/wayofdev/ansible-role-tpl.svg?style=for-the-badge&color=blue)](./LICENSE)

<br>

## 🙆🏼‍♂️ Author Information

This role was created in **2022** by [lotyp / wayofdev](https://github.com/wayofdev).

<br>

## 🧱 Credits and Resources

**Inspired by:**

* Some resources goes here if needed...

<br>

## 🫡 Contributors

<img align="left" src="https://img.shields.io/github/contributors-anon/wayofdev/ansible-role-homebrew?style=for-the-badge"/>

<a href="https://github.com/wayofdev/ansible-role-tpl/graphs/contributors">
  <img src="https://opencollective.com/wod/contributors.svg?width=890&button=false">
</a>

<br>
