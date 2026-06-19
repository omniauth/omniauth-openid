# Changelog

[![SemVer 2.0.0][📌semver-img]][📌semver] [![Keep-A-Changelog 1.0.0][📗keep-changelog-img]][📗keep-changelog]

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog][📗keep-changelog],
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html),
and [yes][📌major-versions-not-sacred], platform and engine support are part of the [public API][📌semver-breaking].
Please file a bug if you notice a violation of semantic versioning.

[📌semver]: https://semver.org/spec/v2.0.0.html
[📌semver-img]: https://img.shields.io/badge/semver-2.0.0-FFDD67.svg?style=flat
[📌semver-breaking]: https://github.com/semver/semver/issues/716#issuecomment-869336139
[📌major-versions-not-sacred]: https://tom.preston-werner.com/2022/05/23/major-version-numbers-are-not-sacred.html
[📗keep-changelog]: https://keepachangelog.com/en/1.0.0/
[📗keep-changelog-img]: https://img.shields.io/badge/keep--a--changelog-1.0.0-FFDD67.svg?style=flat

## [Unreleased]

### Added

### Changed

### Deprecated

### Removed

### Fixed

- Restored `docs/CNAME` so the generated documentation site keeps its custom domain.

### Security

## [2.0.2] - 2025-06-08
- TAG: [v2.0.2][2.0.2t]
- COVERAGE: 92.06% -- 348/378 lines in 15 files
- BRANCH COVERAGE: 79.49% -- 62/78 branches in 15 files
- 44.44% documented
### Added
- Github Actions for Continuous Integration by @pboling
  - Test workflows with latest dependencies and more platform and dep HEADs
  - Expanded test suite, covering many more points of the dependency matrix
- More documentation by @pboling, @Aboling0
- 20 year signing cert expires 2045-04-29 by @pboling
- Added CITATION.cff by @pboling
- devcontainer for easier maintenance by @pboling
- Add SECURITY.md policy by @pboling
- CONTRIBUTING.md - Instructions for contributing by @pboling
- Modernized gem structure, and updated dependencies for development by @pboling
- Set `SKIP_GEM_SIGNING` in env to allow `gem build` without cryptographic signing requirement by @pboling
  - Useful for linux distros whose package managers sign packages independently
- Example client / server in `/examples` by @pboling
### Changed
- Updated Code of Conduct to Contributor Covenant v2.1 by @pboling

## [2.0.1] - 2021-01-19
- TAG: [v2.0.0][2.0.0t]

## [1.0.1] - 2011-11-04
- TAG: [v1.0.1][1.0.1t]

## [1.0.0] - 2011-11-02
- TAG: [v1.0.][1.0.0t]

[Unreleased]: https://github.com/omniauth/omniauth-openid/compare/v2.0.2...HEAD
[2.0.2]: https://github.com/omniauth/omniauth-openid/compare/v2.0.2...v2.0.1
[2.0.2t]: https://github.com/omniauth/omniauth-openid/tags/v2.0.2
[2.0.1]: https://github.com/omniauth/omniauth-openid/compare/v2.0.1...v1.0.1
[2.0.1t]: https://github.com/omniauth/omniauth-openid/tags/v2.0.1
[1.0.1]: https://github.com/omniauth/omniauth-openid/compare/v1.0.1...v1.0.0
[1.0.1t]: https://github.com/omniauth/omniauth-openid/tags/v1.0.1
[1.0.0]: https://github.com/omniauth/omniauth-openid/compare/6019f3abd7b707567e2217c91be64f7a6c4aa34b...v1.0.0
[1.0.0t]: https://github.com/omniauth/omniauth-openid/tags/v1.0.0
