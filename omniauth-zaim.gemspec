# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-zaim/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "omniauth-zaim"
  gem.version       = Omniauth::Zaim::VERSION
  gem.authors       = ["Yuki Ito"]
  gem.email         = ["yuki@gnnk.net"]
  gem.description   = %q{OmniAuth strategy for Zaim}
  gem.summary       = %q{OmniAuth strategy for Zaim}
  gem.homepage      = "https://github.com/mururu/omniauth-zaim"

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'multi_json', '~> 1.3'
  gem.add_runtime_dependency 'omniauth-oauth', '~> 1.0'
end
