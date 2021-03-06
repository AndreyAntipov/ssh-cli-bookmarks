# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ssh/bookmarks/version'

Gem::Specification.new do |spec|
  spec.name          = "ssh-bookmarks"
  spec.version       = SSH::Bookmarks::VERSION
  spec.authors       = ["Andrey Antipov"]
  spec.email         = ["andrey@antipov.me"]
  spec.summary       = %q{A dead simple cli ssh server list.}
  spec.homepage      = 'https://github.com/AndreyAntipov/ssh-bookmarks'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

    # cli interface dependency
  spec.add_runtime_dependency 'highline'

    # docs
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'inch'

  # preloader
  # TODO: replace spring to something else
  # spec.add_development_dependency 'spring'

  # irb
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'hirb'

  # tests
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'factory_girl'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'reek'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-expectations'
  spec.add_development_dependency 'fuubar'

  # automation
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-inch'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-yard'
  spec.add_development_dependency 'guard-reek'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-cucumber'
  spec.add_development_dependency 'guard-bundler'

end
