module Messaging
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates/views', __FILE__)

      argument :messaging_views_name, :type => :string, :default => "resources"
      
      def generate_messaging_views
        template "messaging/index.html.erb", "app/views/messaging/index.html.erb"
        template "messaging/conversations.html.erb", "app/views/messaging/conversation.html.erb"
        template "messaging/show.html.erb", "app/views/messaging/show.html.erb"
      end

    end
  end
end

