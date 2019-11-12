require "workarea/testing/teaspoon"

Teaspoon.configure do |config|
  config.root = Workarea::CategoryOverview::Engine.root
  Workarea::Teaspoon.apply(config)
end
