module Messaging
  module Generators
    class HelpersGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates/helpers', __FILE__)

      argument :messaging_helpers_name, :type => :string, :default => "resources"

      def generate_messaging_views
        template "messages_helper.rb", "app/helpers/messages_helper.rb"
      end
      
    end
  end
end
