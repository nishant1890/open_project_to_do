module OpenProjectToDo
  class Engine < ::Rails::Engine
    isolate_namespace OpenProjectToDo

    config.to_prepare do
      OpenProjectToDo::ApplicationController.helper Rails.application.helpers
    end
  end
end
