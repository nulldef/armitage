# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name        = 'armitage-rubocop'
  spec.version     = '0.76.0.1'
  spec.license     = 'MIT'
  spec.authors     = ['Rustam Ibragimov']
  spec.email       = ['iamdaiver@icloud.com']
  spec.homepage    = 'https://github.com/0exp/armitage'
  spec.summary     = 'A set of rubocop settings'
  spec.description = 'A set of rubocop settings used in my own projects.' \
                     'Support for: vanilla ruby, rspec, rails.'

  spec.bindir        = 'bin'
  spec.require_paths = ['lib']
  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.add_dependency 'rubocop',             '= 0.76.0'
  spec.add_dependency 'rubocop-performance', '= 1.5.0'
  spec.add_dependency 'rubocop-rails',       '= 2.3.2'
  spec.add_dependency 'rubocop-rspec',       '= 1.36.0'
  spec.add_dependency 'rubocop-rake',        '= 0.5.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
end
