module BootstrapHelpers
  module Helpers
    def alert(message, options = {}, &block)
      Bootstrap::Alert.new(self).container(message, options, &block)
    end

    def modal(options = {}, &block)
      Bootstrap::Modal.new(self).container(options, &block)
    end

    def panel(options = {}, &block)
      Bootstrap::Panel.new(self).container(options, &block)
    end
  end
end
