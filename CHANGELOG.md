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

- Added support for JRuby 10.1 and TruffleRuby 34.0.

- kettle-jem-template-20260720-005 - README Support & Community links now
  include RubyForum.
- kettle-jem-template-20260726-001 - Projects now include YARD lint
  configuration and documentation dependencies so documentation issues fail
  before generated docs are refreshed.
- kettle-jem-template-20260727-001 - Spec harness documentation now lists the
  RSpec helpers provided by `kettle-test`.
- kettle-jem-template-20260729-005 - Gemspec metadata now publishes this
  project's RubyForum tag as `mailing_list_uri`, and support docs link to the
  tagged RubyForum community alongside Discord.

### Changed

- Retemplated generated project metadata, support documentation, CI workflows,
  binstubs, and development dependency floors with `kettle-jem` v7.0.0.

- kettle-jem-template-20260716-002 - Gemspecs now ship fewer repository-only
  files, reducing package noise for downstream packagers.
- kettle-jem-template-20260720-002 - Development Gemfiles now use the released
  `tree_sitter_language_pack` gem 1.13.3 or newer by default.
- kettle-jem-template-20260725-002 - Version specs now use `anonymous_loader` to
  cover `version.rb` without redefining constants, or are removed when version
  specs are not managed for the project.
- kettle-jem-template-20260728-001 - Generated Ruby workflows now use clearer
  setup-ruby-flash planning and can prepare appraisal-only jobs without
  installing the main Gemfile bundle.

- Document the OmniAuth OpenID strategy configuration and storage requirements in the README.

- kettle-jem-template-20260801-001 - Generated README gem dashboard links now
  use ClickGems instead of BestGems.

### Deprecated

### Removed

### Fixed

- Restored `docs/CNAME` so the generated documentation site keeps its custom domain.

- Package configured license files in gem release file lists.

- kettle-jem-template-20260720-003 - StructuredMerge Git diff driver config now
  uses the installed `smorg-rb` driver command.
- kettle-jem-template-20260725-001 - Release pull request branches beginning
  with `feature/release` now run JRuby and TruffleRuby workflows.
- kettle-jem-template-20260726-002 - Generated version files now document their
  version namespace and constants, reducing warning-only YARD lint output.
- kettle-jem-template-20260726-003 - Coverage upload steps now treat Coveralls,
  QLTY, and Codecov as optional, so provider outages do not fail CI when local
  coverage thresholds still pass.
- kettle-jem-template-20260728-002 - Generated RuboCop configs now ignore the
  same `gemfiles/vendor/bundle` tree as `.gitignore`, so vendored dependency
  installs are not reported as project lint debt.
- kettle-jem-template-20260728-003 - Generated dep-heads workflows now run
  TruffleRuby jobs with current RubyGems and Bundler, avoiding setup failures
  before the test suite starts.
- kettle-jem-template-20260728-004 - Generated dep-heads workflows now use the
  setup-ruby Bundler install path for direct appraisal Gemfiles, avoiding rv
  lockfile parser failures on Git and path dependencies.
- kettle-jem-template-20260728-005 - VersionGem bootstrap now creates the
  missing canonical version spec when a project only has shim namespace version
  specs.
- kettle-jem-template-20260729-001 - Generated JRuby 9.4 workflows now use the
  legacy manual bundle install path, avoiding setup-time Bundler full-index
  failures against `gem.coop`.
- kettle-jem-template-20260730-001 - Gemspec package file enumeration now runs
  relative to the gemspec directory, so release package contents stay correct
  even when the gemspec is loaded from another working directory.

- kettle-jem-template-20260801-002 - Generated RSpec helpers now normalize
  managed configuration block bindings structurally, preventing mixed block
  parameter names from producing invalid configuration after a merge.
- kettle-jem-template-20260801-003 - Generated project metadata and
  documentation now normalize configured underscore hostnames to valid
  hyphenated hostnames.
- kettle-jem-template-20260801-004 - Generated organization README logos now
  use GitHub's stable organization avatar endpoint instead of assuming a
  matching Galtzo-hosted asset exists.
- kettle-jem-template-20260802-001 - Devcontainer JSON files now merge as JSONC,
  preserving comments and trailing commas during template updates.

- Restore the OmniAuth OpenID version module in its parent namespace.

- Restore the public OmniAuth::OpenID::Version inclusion API.

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
