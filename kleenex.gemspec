
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "kleenex/version"

Gem::Specification.new do |spec|
  spec.name          = "kleenex"
  spec.version       = Kleenex::VERSION
  spec.authors       = ["Matti Paksula"]
  spec.email         = ["matti.paksula@iki.fi"]

  spec.summary       = %q{Runs DatabaseCleaner and empties Sidekiq queues}
  spec.description   = %q{Runs DatabaseCleaner and empties Sidekiq queues}
  spec.homepage      = "https://www.github.com/matti/kleenex"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_development_dependency "sidekiq", "~> 6.4"
  spec.add_development_dependency "database_cleaner", "~> 1.6"
end
