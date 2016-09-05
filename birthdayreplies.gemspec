# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'birthdayreplies/version'

Gem::Specification.new do |spec|
  spec.name          = "birthdayreplies"
  spec.version       = Birthdayreplies::VERSION
  spec.authors       = ["Prashant Anantharaman"]
  spec.email         = ["prashant.barca@gmail.com"]

  spec.summary       = "This gem is to automagically reply to all the fb posts on your wall on facebook."
  spec.description   = "All you have to do is create your own facebook app, add some credentials using our options, add some keywords to our list of keywords, and that it. We will comment whatever you want!"
  spec.homepage      = "https://github.com/prashantbarca/birthdayreplies"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
