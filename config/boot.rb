ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.

# one of its dependencies throws an error when deploying to heroku
#require "bootsnap/setup" # Speed up boot time by caching expensive operations.
