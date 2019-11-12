module Workarea
  module CategoryOverview
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::CategoryOverview
    end
  end
end
