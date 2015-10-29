require 'rails/railtie'
require 'messaging/messages_helper'

module Messaging

  class Railtie <  Rails::Railtie
    generators do
      require "generators/messaging/install_generator"
    end

    # initializer "rails-messenger.messages_helper" do |app|
    #   ActiveSupport.on_load(:action_view) do
    #     include ImageZoomer
    #   end
    # end

    # initializer "rails-messenger.messages_helper" do
    #   ActionView::Base.send :include, MessagesHelper
    # end
  end




end
