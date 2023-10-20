# -*- encoding: utf-8 -*-
# stub: rspec-openapi 0.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rspec-openapi".freeze
  s.version = "0.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/exoego/rspec-openapi/blob/master/CHANGELOG.md", "homepage_uri" => "https://github.com/exoego/rspec-openapi", "rubygems_mfa_required" => "true", "source_code_uri" => "https://github.com/exoego/rspec-openapi" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Takashi Kokubun".freeze, "TATSUNO Yasuhiro".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-10-10"
  s.description = "Generate OpenAPI from RSpec request specs".freeze
  s.email = ["takashikkbn@gmail.com".freeze, "ytatsuno.jp@gmail.com".freeze]
  s.homepage = "https://github.com/exoego/rspec-openapi".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5.0".freeze)
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Generate OpenAPI schema from RSpec request specs".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<actionpack>.freeze, [">= 5.2.0"])
    s.add_runtime_dependency(%q<rspec-core>.freeze, [">= 0"])
  else
    s.add_dependency(%q<actionpack>.freeze, [">= 5.2.0"])
    s.add_dependency(%q<rspec-core>.freeze, [">= 0"])
  end
end
