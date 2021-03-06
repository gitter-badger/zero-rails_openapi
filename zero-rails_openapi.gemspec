
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "open_api/version"

Gem::Specification.new do |spec|
  spec.name          = "zero-rails_openapi"
  spec.version       = OpenApi::VERSION
  spec.authors       = ["zhandao"]
  spec.email         = ["x@skippingcat.com"]

  spec.summary       = %q{Concise DSL for generating OpenAPI3 documentation.}
  spec.description   = %q{Concise DSL for generating OpenAPI Specification 3 (OAS3) JSON documentation for Rails application.}
  spec.homepage      = "https://github.com/zhandao/zero-rails_openapi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_runtime_dependency "rails", ">= 3"
  spec.add_runtime_dependency "activesupport", ">= 3"
end
