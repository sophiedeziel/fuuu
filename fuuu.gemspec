# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fuuu/version'

Gem::Specification.new do |spec|
  spec.name          = "fuuu"
  spec.version       = Fuuu::VERSION
  spec.authors       = ["Sophie Deziel"]
  spec.email         = ["courrier@sophiedeziel.com"]

  spec.summary       = %q{What is that exception? Fuuuuuuuuuuu}
  spec.description   = %q{Pass your exception throwing line in a block to fuuuuuuuu and it will open a stack overflow search with the error message in your default browser}
  spec.homepage      = "http://github.com/sophiedeziel/fuuu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "launchy"
end
