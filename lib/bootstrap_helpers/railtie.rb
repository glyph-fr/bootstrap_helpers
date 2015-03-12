module BootstrapHelpers
  class Railtie < Rails::Railtie
    initializer 'include helpers into ActionView::Base' do
      ActiveSupport.on_load(:action_view) do
        include BootstrapHelpers::Helpers
      end
    end
  end
end
