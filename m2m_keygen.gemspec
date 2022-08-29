# frozen_string_literal: true

require_relative "lib/m2m_keygen/version"

Gem::Specification.new do |spec|
  spec.name = "m2m_keygen"
  spec.version = M2mKeygen::VERSION
  spec.authors = ["Denis <Zaratan> Pasin"]
  spec.email = ["zaratan@hey.com"]

  spec.summary = "Secure M2M key generator"
  spec.description =
    "Secure M2M key generator for Ruby. Generates secure keys for M2M communication in REST APIs."
  spec.homepage = "https://github.com/Billcorporate/m2m_keygen_ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata[
    "changelog_uri"
  ] = "https://github.com/Billcorporate/m2m_keygen_ruby/blob/main/CHANGELOG.md"
  spec.metadata = { "rubygems_mfa_required" => "true" }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files =
    Dir.chdir(__dir__) do
      `git ls-files -z`.split("\x0")
        .reject do |f|
          (f == __FILE__) ||
            f.match(
              %r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)}
            )
        end
    end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sorbet-runtime"
  spec.add_dependency "zeitwerk", "~> 2.6"
end
