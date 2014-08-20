module Devise
  module Generators
    class InstallGenerator < Rails::Generators::Base
      def copy_locale
        copy_file "../../../config/locales/en.yml", "config/locales/feedback_mailer.en.yml"
      end
    end
  end
end