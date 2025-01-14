module PasswordSecurity
  module ModelExtension
    def validates_password_strength(field_name)
      validate do
        password = send(field_name)

        next if password.blank?

        unless password.length >= 14 && password =~ /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[@$!%*?&])/
          errors.add(field_name, I18n.t("activerecord.errors.messages.password_complexity"))
        end
      end
    end
  end
end
