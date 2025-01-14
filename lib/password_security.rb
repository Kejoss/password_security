# frozen_string_literal: true

require "active_support"
require "active_support/core_ext"
require_relative "password_security/version"
require "password_security/model_extension"
require "./config/i18n"

# PasswordSecurity
module PasswordSecurity
  ActiveSupport.on_load(:active_record) do
    extend PasswordSecurity::ModelExtension
  end
end
