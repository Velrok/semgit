# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'semgit/version'

Gem::Specification.new do |spec|
  spec.name          = "semgit"
  spec.version       = Semgit::VERSION
  spec.authors       = ["Velrok"]
  spec.email         = ["waldemar.schwan@gmail.com"]
  spec.description   = %q{A binary that creates new sem ver based git tags, given a current version and a incrementer.}
  spec.summary       = %q{Create sem ver based git tags.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_dependency "sem_version", "~> 2.0.0"
  spec.add_dependency "docopt"
end
