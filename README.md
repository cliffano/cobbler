![Avatar](avatar.jpg)

[![Build Status](https://github.com/cliffano/cobbler/actions/workflows/ci-workflow.yaml/badge.svg)](https://github.com/cliffano/cobbler/actions/workflows/ci-workflow.yaml)

# Cobbler

Cobbler is a Makefile for building Ansible roles.
It provides utility targets for building, and creating documentation of Ansible roles.

Have a look at [examples/](examples/) for example projects of how Cobbler can be used.

## Installation

1. Download `src/Makefile-cobbler` as the `Makefile` of your project:
    `curl https://raw.githubusercontent.com/cliffano/cobbler/main/src/Makefile-cobbler -o Makefile`
2. Create configuration file `cobbler.yml` with properties described in [Configuration](#configuration) section
3. Run the available `Makefile` targets described in [Usage](#usage) section

## Configuration

Create Cobbler configuration file called `cobbler.yml` with contains the following properties:

| Property | Description | Example |
|----------|-------------|---------|
| package_name | The name of the Ansible role | `cobblerexample` |
| author | The author of the role | `Some Author` |
| generator.component | The generator component type from [generator-ansible](https://github.com/cliffano/generator-ansible) | `ansible-role` |
| generator.inputs.project_id | The project ID | `cobblerexample` |
| generator.inputs.project_name | The project display name | `CobblerExample` |
| generator.inputs.project_desc | The project description | `A sample Ansible role` |
| generator.inputs.author_name | The author's name | `Some Author` |
| generator.inputs.author_email | The author's email address | `someauthor@example.com` |
| generator.inputs.github_id | The GitHub user or organisation ID | `pakkunbot` |
| generator.inputs.github_repo | The GitHub repository name | `cobblerexample` |

## Usage

The following targets are available:

| Target | Description |
|--------|-------------|
| ci | CI target to be executed by CI/CD tool, end to end build of an Ansible role |
| stage | Ensure stage directory exists |
| clean | Remove all temporary (staged) files |
| rmdeps | Remove all downloaded package dependencies |
| deps | Download package dependencies using Pip |
| deps-upgrade | Upgrade package dependencies using pip-compile |
| deps-extra-apt | Install extra tools using `apt`: Python [VirtualEnv](https://virtualenv.pypa.io/) |
| update-to-latest | Update Makefile to the latest version tag |
| update-to-main | Update Makefile to the main branch |
| update-to-version | Update Makefile to the version defined in `TARGET_COBBLER_VERSION` parameter |
| update-dotfiles | Update the dotfiles with latest from [generator-ansible](https://github.com/cliffano/generator-ansible) |
| lint | Run lint checks against source and test code using [Ansible Lint](https://ansible-lint.readthedocs.io/) and [yamllint](https://www.yamllint.com/) |
| test | Run integration testing using [Ansible Molecule](https://ansible-molecule.readthedocs.io/) |
| test-examples | Run example scripts under `examples/` directory |

## Colophon

Related Projects:

* [generator-ansible](https://github.com/cliffano/generator-ansible) - Ansible role generator using Plop
