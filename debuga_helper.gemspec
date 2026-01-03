require_relative 'lib/debuga_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "debuga_helper"
  spec.version       = DebugaHelper::VERSION
  spec.authors       = ["David Lyons Garcia"]
  spec.email         = ["davidlyonsgarcia@gmail.com"]

  spec.summary       = %q{A helper module for debugging purposes in Rails applications.}
  spec.description   = %q{Provides debuga and debuga_shinny methods for logging debug messages with caller info and shiny titles.}
  spec.homepage      = "https://github.com/EhtuCom/debuga_helper"
  spec.license       = "MIT"

  spec.files         = Dir.glob("lib/**/*") + %w[README.md]
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 5.0"
  spec.add_dependency "colorize", "~> 0.8"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/EhtuCom/debuga_helper"
end
