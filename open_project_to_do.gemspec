$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_project_to_do/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "open_project_to_do"
  s.version     = OpenProjectToDo::VERSION
  s.authors     = [""]
  s.email       = [""]
  s.homepage    = ""
  s.summary     = ""
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.7.1"

  s.add_dependency 'pry'
  s.add_dependency 'jquery-ui-rails'
  s.add_dependency 'mysql2'

end
