# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eye/notify/hipchat/version'

Gem::Specification.new do |spec|
  spec.name          = "eye-notify-hipchat"
  spec.version       = Eye::Notify::Hipchat::VERSION
  spec.authors       = ["Ryan Schlesinger"]
  spec.email         = ["ryan@aceofsales.com"]
  spec.summary       = %q{Adds a hipchat notifier to eye}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hipchat", "~> 1.2.0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
