# frozen_string_literal: true

require_relative "lib/suppliersecurity_gem/version"

Gem::Specification.new do |spec|
  spec.name = "suppliersecurity_gem"
  spec.version = SuppliersecurityGem::VERSION
  spec.authors = ["Stijn Muylle"]
  spec.email = ["stijnmuylle@gmail.com"]

  spec.summary = "Wrapper for the suppliersecurity.info api"
  spec.description = "Wrapper for the suppliersecurity.info api"
  spec.homepage = "https://suppliersecurity.info"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ddccffvv/suppliersecurity_gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency 'httparty', '~> 0.18.0'

end
