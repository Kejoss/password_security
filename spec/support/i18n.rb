# frozen_string_literal: true

# spec/support/i18n.rb
require "i18n"

I18n.load_path += Dir[File.expand_path("../lib/locales/**/*.yml", __dir__)]
I18n.default_locale = :es
