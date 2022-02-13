require_relative 'lib/epogue_palindrome/version'

Gem::Specification.new do |spec|
  spec.name          = "epogue_palindrome"
  spec.version       = EpoguePalindrome::VERSION
  spec.authors       = ["Eric Pogue"]
  spec.email         = ["eric.pogue@ej4.com"]

  spec.summary       = %q{a palindrome detector}
  spec.description   = %q{Palindrome detector courtesy of Learn Enough Ruby}
  spec.homepage      = "https://github.com/ericpogue/"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ericpogue/epogue_palindrome"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
