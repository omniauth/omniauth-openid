# frozen_string_literal: true

# kettle-jem:freeze
# To retain chunks of comments & code during kettle-jem templating:
# Wrap custom sections with freeze markers (e.g., as above and below this comment chunk).
# kettle-jem will then preserve content between those markers across template runs.
# kettle-jem:unfreeze

source "https://gem.coop"

git_source(:codeberg) { |repo_name| "https://codeberg.org/#{repo_name}" }
git_source(:gitlab) { |repo_name| "https://gitlab.com/#{repo_name}" }

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

#### IMPORTANT #######################################################
# Gemfile is for local development ONLY; Gemfile is NOT loaded in CI #
####################################################### IMPORTANT ####

# Include dependencies from omniauth-openid.gemspec
gemspec

# Local workspace dependency wiring for *_local.gemfile overrides
gem "nomono", "~> 1.0", ">= 1.0.4", require: false # ruby >= 2.2

# Templating (env-switched: SMORG_RB_DEV=/path/to/structuredmerge/ruby/gems for local paths)
eval_gemfile "gemfiles/modular/templating.gemfile" if ENV.fetch("K_JEM_TEMPLATING", "false").casecmp("true").zero?

# Debugging
eval_gemfile "gemfiles/modular/debug.gemfile"

### Std Lib Extracted Gems
eval_gemfile "gemfiles/modular/x_std_libs/r3/libs.gemfile"

### Security Audit
eval_gemfile "gemfiles/modular/audit.gemfile"

# Documentation
eval_gemfile "gemfiles/modular/documentation.gemfile"

# Linting
eval_gemfile "gemfiles/modular/style.gemfile"

# Code Coverage (env-switched: KETTLE_RB_DEV=true for local paths)
eval_gemfile "gemfiles/modular/coverage.gemfile"

# Optional
eval_gemfile "gemfiles/modular/optional.gemfile"

eval_gemfile "gemfiles/modular/x_std_libs.gemfile"

# See unlocked_deps appraisal for more details on irb inclusion
gem "irb", "~> 1.17" # ruby >= 2.7
### Testing
gem "appraisal2", "~> 3.1", ">= 3.1.1"
# group :example do
#   gem 'sinatra'
# end
