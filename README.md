<img align="right" src="https://raw.github.com/cliffano/mdh/master/avatar.jpg" alt="Avatar"/>

[![Build Status](https://github.com/cliffano/mdh/actions/workflows/ci-workflow.yaml/badge.svg)](https://github.com/cliffano/mdh/actions/workflows/ci-workflow.yaml)
<br/>

MDH
---

MDH is a Makefile for building Ansible roles.
It provides utility targets for building, and creating documentation of Ansible roles.

Have a look at [examples/](examples/) for example projects of how MDH can be used.

Installation
------------

1. Download `src/Makefile-mdh` as the `Makefile` of your project:
    `curl https://raw.githubusercontent.com/cliffano/mdh/main/src/Makefile-mdh -o Makefile`
2. Run the available `Makefile` targets described in [Usage](#usage) section

Usage
-----

The following targets are available:

| Target | Description |
|--------|-------------|
| ci | CI target to be executed by CI/CD tool, end to end build of an Ansible role |
| stage | Ensure stage directory exists |
| clean | Remove all temporary (staged) files |
| rmdeps | Remove all downloaded package dependencies |
| deps | Download package dependencies using Pip |
| lint | Run lint checks against source and test code using [Ansible Molecule](https://ansible.readthedocs.io/projects/molecule/) |
| test | Run integration testing using [Ansible Molecule](https://ansible.readthedocs.io/projects/molecule/) |
| update-to-latest | Update Makefile to the latest version on origin's main branch |
| update-to-main | Update Makefile to the main branch |
| update-to-version | Update Makefile to the version defined in `TARGET_KNUT_HAUGLAND_VERSION` parameter |

Colophon
--------

Related Projects:

* [generator-ansible](https://github.com/cliffano/generator-ansible) - Ansible role generator using Plop
