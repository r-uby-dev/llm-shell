# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "llm-shell"
  spec.version = "0.15.1"
  spec.authors = ["Robert Gleeson"]
  spec.email = ["robert@r.uby.dev"]

  spec.summary = "The llm.rb console in a single RubyGem"
  spec.description = <<~DESCRIPTION
The llm.rb console distributed as a single RubyGem that includes the optional
llm.rb dependencies. It is a convenience gem that reduces installing the
llm.rb console to a single line: `gem install llm-shell`.
DESCRIPTION

  spec.license = "MIT"

  spec.homepage = "https://r.uby.dev"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/r-uby-dev/llm-shell"
  spec.metadata["documentation_uri"] = spec.homepage

  spec.files = Dir["LICENSE", "README.md", "llm-shell.gemspec", "exe/llm-shell"]
  spec.bindir = "exe"
  spec.executables = ["llm-shell"]

  ##
  # The dependencies that are required to run
  # the llm.rb console
  spec.add_dependency "llm.rb", "~> 19.0"
  spec.add_dependency "curses", "~> 1.7"
  spec.add_dependency "kramdown", "~> 2.5"
  spec.add_dependency "unicode-display_width", "~> 3.2"
end
