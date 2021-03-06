# frozen_string_literal: true

$:.push File.expand_path('../lib', __FILE__)

require 'fluent/plugin/cmetrics/version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-metrics-cmetrics"
  spec.version       = Fluent::Plugin::CMetrics::VERSION
  spec.authors       = ["Hiroshi Hatake"]
  spec.email         = ["cosmo0920.oucc@gmail.com"]

  spec.summary       = "CMetrics context using metrics plugin for Fluentd."
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/calyptia/fluent-plugin-metrics-cmetrics"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/calyptia/fluent-plugin-metrics-cmetrics/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("cmetrics", [">= 0.2.0"])
  spec.add_runtime_dependency("fluentd", [">= 0.14.0", "< 2"])

  spec.add_development_dependency("rake", ["~> 13.0"])
  spec.add_development_dependency("test-unit", ["~> 3.4"])
end
