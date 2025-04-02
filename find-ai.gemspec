# frozen_string_literal: true

require_relative "lib/find_ai/version"

Gem::Specification.new do |s|
  s.name = "find-ai"
  s.version = FindAI::VERSION
  s.summary = "Ruby library to access the Find AI API"
  s.authors = ["Find AI"]
  s.email = "help@usefind.ai"
  s.files = Dir["lib/**/*.rb", "rbi/**/*.rbi", "sig/**/*.rbs", "manifest.yaml"]
  s.extra_rdoc_files = ["README.md"]
  s.required_ruby_version = ">= 3.0.0"
  s.add_dependency "connection_pool"
  s.homepage = "https://gemdocs.org/gems/find-ai"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/Find-AI/find-ai-ruby"
  s.metadata["rubygems_mfa_required"] = false.to_s
end
