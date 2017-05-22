# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'middleman-hatenastar/version'

Gem::Specification.new do |s|
  s.name        = "middleman-hatenastar"
  s.version     = ::Middleman::Hatenastar::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Yusuke Nakamura"]
  s.email       = ["yusuke1994525@gmail.com"]
  s.homepage    = "https://github.com/unasuke/middleman-hatenastar"
  s.summary     = %q{Embedding hatenastar into the your middleman website.}
  s.description = %q{Embedding hatenastar into the your middleman website.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency "middleman-core", ">= 4"
  
  s.add_development_dependency 'aruba'
  s.add_development_dependency 'bundler', '~> 1.14'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rdoc'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'unasukecop'
  s.add_development_dependency 'yard'
end
