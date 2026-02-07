# rubocop:disable Style/ExpandPathArguments

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'unasukecop/version'

Gem::Specification.new do |spec|
  spec.name          = 'unasukecop'
  spec.version       = Unasukecop::VERSION
  spec.authors       = ['Yusuke Nakamura']
  spec.email         = ['yusuke1994525@gmail.com']

  spec.summary       = 'UnasukeCop is a RuboCop configration gem.'
  spec.description   = 'UnasukeCop is a RuboCop configration gem that optimisation to unasuke.'
  spec.homepage      = 'https://github.com/unasuke/unasukecop'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end

# rubocop:enable Style/ExpandPathArguments
