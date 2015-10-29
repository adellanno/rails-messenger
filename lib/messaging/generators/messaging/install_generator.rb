module Messaging
  module Generators
    class InstallGenerator < Rails::Generators::Base
      argument :resource_name, :type => :string, :default => "resource"
      source_root File.expand_path("../", __FILE__)

      def install
       	generate "messaging:model"
        generate "messaging:controller"
        generate "messaging:views"
        generate "messaging:js"
        generate "messaging:css"
        generate "messaging:helpers"
      end

    end
  end
end
