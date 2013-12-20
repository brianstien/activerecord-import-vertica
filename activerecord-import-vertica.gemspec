# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activerecord/import/vertica/version'

Gem::Specification.new do |spec|
  spec.name          = "activerecord-import-vertica"
  spec.version       = Activerecord::Import::Vertica::VERSION
  spec.authors       = ["Brian Stien"]
  spec.email         = ["brian.stien@moneydesktop.com"]
  spec.description   = %q{An activerecord-import extension for Vertica}
  spec.summary       = %q{An activerecord-import extension for Vertica}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord-import"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
