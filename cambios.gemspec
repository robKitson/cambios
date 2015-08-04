$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cambios/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cambios"
  s.version     = Cambios::VERSION
  s.authors     = ["Rob Kitson"]
  s.email       = ["robk@robkitson.net"]
  s.homepage    = "https://github.com/robKitson/cambios"
  s.summary     = "Track and display your change log."
  s.description = "Track and display your change log."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0", ">= 4.2.0"
end
