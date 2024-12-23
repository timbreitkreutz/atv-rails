require_relative "lib/atv/rails/version"

Gem::Specification.new do |spec|
  spec.name        = "atv-rails"
  spec.version     = ATV::Rails::VERSION
  spec.authors     = [ "Timothy Breitkreutz" ]
  spec.email       = [ "tim@sbrew.com" ]
  spec.homepage    = "https://www.sbrew.com/atv"
  spec.summary     = "Functional JavaScript for Rails."
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/timbreitkreutz/atv-rails"
  spec.metadata["changelog_uri"] = "https://github.com/timbreitkreutz/atv-rails/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "railties", ">= 6.0.1"
end
