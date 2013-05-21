# -*- encoding: utf-8 -*-
require File.expand_path('../lib/yamln8tor/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Hao"]
  gem.email         = ["ahao@blurb.com"]
  gem.description   = "Provides syntax checking on YAML files over Rails' i18n framework file structure"
  gem.summary       = "A Rails i18n yml validation framework."
  gem.homepage      = "http://github.com/blurb/yamln8tor"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "yamln8tor"
  gem.require_paths = ["lib"]
  gem.version       = Yamln8tor::VERSION
  gem.add_dependency "thor"
  gem.add_dependency "ya2yaml"
end
