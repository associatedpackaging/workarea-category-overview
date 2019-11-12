$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/category_overview/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-category_overview"
  s.version     = Workarea::CategoryOverview::VERSION
  s.authors     = ["Jake Beresford"]
  s.email       = ["jberesford@weblinc.com"]
  s.homepage    = "https://github.com/workarea-commerce/workarea-category-overview"
  s.summary     = "Category Overview Content Block."
  s.description = "Content block that combines taxons and images to create category overviews"

  s.files = `git ls-files`.split("\n")

  s.add_dependency "workarea", "~> 3.x"
end
