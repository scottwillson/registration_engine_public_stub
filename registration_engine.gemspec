$:.push File.expand_path("lib", __dir__)

require "registration_engine/version"

Gem::Specification.new do |spec|
  spec.name        = "registration_engine"
  spec.version     = RegistrationEngine::VERSION
  spec.authors     = ["Scott Willson"]
  spec.email       = ["scott@rocketsurgeryllc.com"]
  spec.homepage    = "http://rocketsurgeryllc.com"
  spec.summary     = "Event registration."
  spec.description = "Racing on Rails event registration."

  spec.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md"]

  # 1.119.0 breaks tests with frozen string error
  spec.add_dependency "activemerchant", "1.118.0"
  spec.add_dependency "rails", "~> 6.0.3"
  spec.add_dependency "stripe"
end
