<br>

<div align="center">
<img width="456" src="./assets/logo.gh-light-mode-only.png#gh-light-mode-only">
<img width="456" src="./assets/logo.gh-dark-mode-only.png#gh-dark-mode-only">
</div>


<br>

<br>

<div align="center">
<a href="https://actions-badge.atrox.dev/wayofdev/ansible-role-tpl/goto"><img alt="Build Status" src="https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2Fwayofdev%2Fansible-role-tpl%2Fbadge&style=flat-square"/></a>
<a href="https://galaxy.ansible.com/lotyp/tpl"><img alt="Ansible Role" src="https://img.shields.io/ansible/role/59193?style=flat-square"/></a>
<a href="https://github.com/wayofdev/ansible-role-tpl/tags"><img src="https://img.shields.io/github/v/tag/wayofdev/ansible-role-tpl?sort=semver&style=flat-square" alt="Latest Version"></a>
<a href="https://galaxy.ansible.com/lotyp/tpl">
<img alt="Ansible Quality Score" src="https://img.shields.io/ansible/quality/59193?style=flat-square"/></a>
<a href="https://galaxy.ansible.com/lotyp/tpl">
<img alt="Ansible Role" src="https://img.shields.io/ansible/role/d/59193?style=flat-square"/></a>
<a href="LICENSE"><img src="https://img.shields.io/badge/License-LGPL%20v3-green.svg?style=flat-square" alt="Software License"/></a>
</div>
<br>

# Ansible Role: Template

This is template, that is used to create roles for wayofdev project.

If you **like/use** this role, please consider **starring** it. Thanks!

<br>

## 🗂 Directory Tree for Project

Repository uses default structure, sugested by [Ansible Documentation](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html)

```
.
├── 📄 Makefile
├── 📄 README.md
├── 🗂 defaults
│   └── 📄 main.yml
├── 🗂 files
├── 🗂 handlers
│   └── 📄 main.yml
├── 🗂 meta
│   └── 📄 main.yml
├── 📄 pyproject.toml
├── 📄 requirements.yml
├── 🗂 tasks
│   └── 📄 main.yml
├── 🗂 templates
├── 🗂 tests
│   ├── 📄 ansible.cfg
│   ├── 🗂 defaults
│   │   └── 📄 main.yml
│   ├── 📄 inventory.yml
│   └── 📄 test.yml
└── 🗂 vars
    └── 📄 main.yml
```

## 👨‍💻 IDE Support

Jetbrains products has great ansible language support together with [OrchidE plugin](https://plugins.jetbrains.com/plugin/12626-orchide--ansible-language-support).

> :warning: **Notice**: Note: For ansible language support and autocompletion with [OrchidE](https://www.orchide.dev/pages/dokumentation) following additional `File Type Patterns` should be added.

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

  - **Homebrew**: Requires `homebrew` already installed (you can use `geerlingguy.mac.homebrew` to install it on your Mac).

<br>

## 🔧 Role Variables

Available variables are listed below, along with example values (see `defaults/main.yml`):

### → Structure

```yaml
---

tpl:
  variables:
    key: value
```

<br>

## 📦 Dependencies

  - `geerlingguy.homebrew` – Soft dependency
  - `ansible.community.general` – Installation handled by `Makefile` and it is defined in `requirements.yml`

<br>

## 📗 Example Playbook

```yaml
---
- hosts: localhost

  vars:
    tpl:
      variables:
        key: value

  roles:
    - geerlingguy.mac.homebrew
    - wayofdev.tpl
```

<br>

## ⚙️ Development

To install dependencies and start development you can check contents of our `Makefile`

**Install** dependencies:

```bash
$ make install-deps
```

**Install** all git hooks:

```bash
$ make hooks
```

<br>

## 🧪 Testing

For local testing you can use these comands to test whole role or separate tasks:

> :warning: **Notice**: By defaut all tests are ran against your local machine!

```bash
# run all tasks in role
$ make test
```

<br>

## 🧩 Compatibility

This role has been tested on these systems:

| system / container | tag      |
| :----------------- | -------- |
| macos              | monterey |
| macos              | big-sur  |
| ubuntu             | latest   |
| debian             | latest   |

<br>

## 🤝 License

[![Licence](https://img.shields.io/badge/License-LGPL%20v3-green.svg?style=for-the-badge)](./LICENSE)

<br>

## 🙆🏼‍♂️ Author Information

This role was created in **2022** by [lotyp / wayofdev](https://github.com/wayofdev).

