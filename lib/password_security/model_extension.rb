# frozen_string_literal: true

# lib/password_security/model_extension.rb
module PasswordSecurity
  # ModelExtension
  module ModelExtension
    def self.included(base)
      base.extend(ClassMethods)
    end

    # ClassMethods
    module ClassMethods
      def validates_password_strength(field_name)
        validate do
          password = send(field_name)

          next if password.blank?

          unless password.length >= 14 && password =~ /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])/
            errors.add field_name, I18n.t("errors.messages.password_strength")
          end
        end
      end
    end
  end
end
