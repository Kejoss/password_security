# frozen_string_literal: true

# Lib/config/i18n.rb o similar
require "i18n"

# Cargar los archivos de traducción
I18n.load_path += Dir[File.expand_path("../lib/locales/**/*.yml", __dir__)]
I18n.default_locale = :en
