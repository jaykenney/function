$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "function/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "function"
  s.version     = Function::VERSION
  s.authors     = ['Jason Kenney']
  s.email       = ['bloodycelt@gmail.com']
  s.homepage    = "https://github.com/bloodycelt"
  s.summary     = "Function Object that executes its block in its instance context, inspired by Python."
  s.description = "Python-like functions."

  s.files = [
    'MIT-LICENSE', 
    'Rakefile',
    'README.md',
    'lib/function.rb'
  ]
  
  s.test_files = [
    'spec/function_spec.rb',
    'spec/spec_helper.rb'
  ]

  s.add_development_dependency 'rspec'
  
end
