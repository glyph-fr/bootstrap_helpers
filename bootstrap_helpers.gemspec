# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "bootstrap_helpers"
  spec.version       = BootstrapHelpers::VERSION
  spec.authors       = ["vala"]
  spec.email         = ["gonjo@free.fr"]
  spec.summary       = %q{Rails Boostrap component helpers}
  spec.description   = %q{Rails Boostrap component helpers}
  spec.homepage      = "https://github.com/glyph-fr/bootstrap_helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
