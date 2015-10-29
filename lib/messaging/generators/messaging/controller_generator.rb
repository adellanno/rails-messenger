module Messaging
  module Generators
    class ControllerGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates/controllers', __FILE__)
      
      argument :resource_name, type: :string, default: 'resource'

      def generate_messaging_controller
        template "messaging_controller.rb", "app/controllers/messaging_controller.rb"
        route   "get '/message/:from_id' => 'messaging#conversation', as: 'conversation'\n"\
                "get '/messages' => 'messaging#index', as: 'messages'\n"\
                "post '/message/:to_id' => 'messaging#send_message', as: 'send_message'\n"        
      end
        
    end
  end
end