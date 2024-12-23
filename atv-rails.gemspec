require_relative "lib/atv/rails/version"

Gem::Specification.new do |spec|
  spec.name        = "atv-rails"
  spec.version     = Atv::Rails::VERSION
  spec.authors     = [ "Timothy Breitkreutz" ]
  spec.email       = [ "tim@sbrew.com" ]
  spec.homepage    = "https://www.sbrew.com/atv"
  spec.summary     = "Functional JavaScript for Rails"
  spec.description = "Functional alternative to Stimulus.js for Rails"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/timbreitkreutz/atv-rails"
  spec.metadata["changelog_uri"] = "https://github.com/timbreitkreutz/atv-rails/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.1"
end
