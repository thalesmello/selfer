# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selfer/version'

Gem::Specification.new do |spec|
  spec.name          = "selfer"
  spec.version       = Selfer::VERSION
  spec.authors       = ["Thales Mello"]
  spec.email         = ["thalesmello@gmail.com"]
  spec.summary       = %q{Import this module into your class.}
  spec.description   = %q{Include Selfer in your class in orde to use shorter notation for method calls}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
