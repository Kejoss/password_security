# frozen_string_literal: true

require_relative "lib/password_security/version"

Gem::Specification.new do |spec|
  spec.name = "password_security"
  spec.version = PasswordSecurity::VERSION
  spec.authors = ["Kejoss"]
  spec.email = ["kevinanderson22082001@gmail.com"]

  spec.summary = "A gem to validate password strength in ActiveRecord models."
  spec.description = "This gem provides a method to validate the strength of passwords in ActiveRecord models, ensuring
                      they meet certain complexity requirements."
  spec.homepage = "https://rubygems.org/gems/password_security"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Kejoss/password_security.git"
  spec.metadata["changelog_uri"] = "https://github.com/Kejoss/password_security.git/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
