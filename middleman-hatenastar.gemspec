# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-hatenastar"
  s.version     = "0.0.1"
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
  
  # Additional dependencies
  # s.add_runtime_dependency("gem-name", "gem-version")
end
