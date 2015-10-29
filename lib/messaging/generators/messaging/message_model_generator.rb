module Messaging
  module Generators
    class ModelGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates/models', __FILE__)

      argument :resource_name, :type => :string, :default => "resource"

      def generate_messaging_model
        copy_file "message.rb", "app/models/message.rb"
      end

      def create_messaging_migration
        generate "migration CreateMessage to_id:integer from_id:integer created_at:datetime updated_at:datetime message:text conversation_code:string seen:boolean"
      end

    end
  end
end
