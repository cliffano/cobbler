# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

## 2.4.0 - 2026-07-11
### Changed
- Extract common utility functions

## 2.3.0 - 2026-07-07
### Added
- Add deps_extra hook to automatically provision extra packages
- Add deps target
- Add lint and test reporting
- Add update-partials target

### Changed
- Extract common generator vars init to set_generator_vars

### Fixed
- Fix local role testing since galaxy install only supports published roles

## 2.2.0 - 2026-06-25
### Added
- Add pre and post hook targets support
- Add Github token prefix parameter

## 2.1.0 - 2026-05-09
### Added
- Add JSON and Markdown lint
- Add deps-extra-apt Makefile target
- Add test-examples and update-dotfiles Makefile targets
- Add examples in ansible-role example

### Changed
- Update README format to be mdl compliant

### Fixed
- Fix regression of example version following full ci build

## 2.0.0 - 2026-02-14
### Changed
- Rename MDH to Cobbler

### Removed
- Remove accidentally included x-* target

## 1.0.0 - 2025-11-15
### Added
- Add .ansible, .git, .env to ansible-lint and yamllint ignore list
- Add json lint check

### Changed
- Replace molecule lint with ansible-lint and yamllint
- Upgrade Python deps to latest
- Upgrade Molecule setup to support latest Molecule 25.9

### Fixed
- Fix missing header separator on yamllint config

## 0.10.0 - 2025-10-11
### Added
- Initial version
