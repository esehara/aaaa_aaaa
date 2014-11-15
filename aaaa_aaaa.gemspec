# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aaaa_aaaa/version'

Gem::Specification.new do |spec|
  spec.name          = "aaaa_aaaa"
  spec.version       = AaaaAaaa::VERSION
  spec.authors       = ["esehara shigeo"]
  spec.email         = ["esehara@gmail.com"]
  spec.summary       = %q{Mock text generator example "ああああああああ１０"}
  spec.description   = %q{this gem generates design mock text, example "あああああああ１０"}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
