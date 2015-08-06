# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bugsnag/ext/version'

Gem::Specification.new do |spec|
  spec.name          = "bugsnag-ext"
  spec.version       = Bugsnag::Ext::VERSION
  spec.authors       = ["Daisuke Taniwaki"]
  spec.email         = ["daisuketaniwaki@gmail.com"]

  spec.summary       = %q{Extensions of Bugsnag.}
  spec.description   = %q{Extensions of Bugsnag.}
  spec.homepage      = "https://github.com/dtaniwaki/bugsnag-ext"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
