# frozen_string_literal: true

# spec/password_security/model_extension_spec.rb
require "password_security/model_extension"
require "active_model"

class DummyModel
  include ActiveModel::Validations
  include PasswordSecurity::ModelExtension

  attr_accessor :password
  attr_reader :errors

  def initialize
    @errors = ActiveModel::Errors.new(self)
  end
end

RSpec.describe PasswordSecurity::ModelExtension do
  let(:dummy_model) { DummyModel.new }

  before do
    DummyModel.validates_password_strength(:password)
  end

  it "does not add an error for a valid password" do
    dummy_model.password = "Valid123$Password"
    dummy_model.validate
    expect(dummy_model.errors[:password]).to be_empty
  end

  it "adds an error for a short password" do
    dummy_model.password = "Short1$"
    dummy_model.validate
    expect(dummy_model.errors[:password]).to include(I18n.t("errors.messages.password_strength").to_s)
  end

  it "adds an error for a password without special characters" do
    dummy_model.password = "Password1234"
    dummy_model.validate
    expect(dummy_model.errors[:password]).to include(I18n.t("errors.messages.password_strength").to_s)
  end
end
