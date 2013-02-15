# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "octokit-enterprise"
  gem.version       = File.read('VERSION')
  gem.authors       = ["nov"]
  gem.email         = ["nov.matake@gree.net"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'octokit'
  gem.add_development_dependency "rspec", ">= 2"
end
