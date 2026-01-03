require 'debuga_helper'
require 'rails'

module DebugaHelper
  class Railtie < Rails::Railtie
    initializer "debuga_helper.action_controller" do
      ActiveSupport.on_load(:action_controller) do
        include DebugHelper
      end
    end

    initializer "debuga_helper.action_view" do
      ActiveSupport.on_load(:action_view) do
        include DebugHelper
      end
    end
  end
end
