# frozen_string_literal: true

require_relative "lib/foodie/version"

Gem::Specification.new do |spec|
  spec.name = "foodie"
  spec.version = Foodie::VERSION
  spec.authors = ["Richie"]
  spec.email = ["rickthomas1980@gmail.com"]

  spec.summary = "Richie's `foodie` gem implementation (from Bundler tutorial)."
  spec.description = "Richie's `foodie` gem implementation (from Bundler tutorial)."
  spec.homepage = "https://bundler.io/v2.0/guides/creating_gem.html"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # spec.metadata["allowed_push_host"] = "https://github.com/richiethomas/foodie-gem"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://bundler.io/v2.0/guides/creating_gem.html"
  spec.metadata["changelog_uri"] = "https://bundler.io/v2.0/guides/creating_gem.html"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "byebug", "~> 11.1"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_dependency "activesupport", "~> 4.2.0"
  spec.add_dependency "thor"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
