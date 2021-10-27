# frozen_string_literal: true

require_relative "lib/rubygems/server/version"

Gem::Specification.new do |spec|
  spec.name = "rubygems-server"
  spec.version = Rubygems::Server::VERSION
  spec.authors = ["Hiroshi SHIBATA"]
  spec.email = ["hsbt@ruby-lang.org"]

  spec.summary = "Gem::Server and allows users to serve gems for consumption by `gem --remote-install`."
  spec.description = spec.summary
  spec.homepage = "https://github.com/rubygems/rubygems-server"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "webrick"
end
