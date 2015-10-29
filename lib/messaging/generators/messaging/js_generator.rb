module Messaging
  module Generators
    class JsGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates/assets/javascript', __FILE__)
      argument :messaging_js_name, :type => :string, :default => "resource"

      def generate_chat_js
        template "custom.js", "app/assets/javascripts/messaging.js"
      end
    end
  end
end
