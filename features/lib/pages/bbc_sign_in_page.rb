require 'capybara/dsl'

class BBCSignInPage
  include Capybara::DSL

  attr_accessor :error

  # Page objects
  EMAIL_FIELD_ID = 'user-identifier-input'.freeze
  PASSWORD_FIELD_ID = 'password-input'.freeze
  SUBMIT_BUTTON_ID = 'submit-button'.freeze
  ERROR_MESSAGE_BOX_ID = 'form-message-username'.freeze

  def initialize
    @error = 'Sorry, we can’t find an account with that email. You can register for a new account or get help here.'
  end

  def fill_in_email_field(email)
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def fill_in_password_field(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def click_submit_button
  click_button(SUBMIT_BUTTON_ID)
  end

  def error_message_box
    find(:id, ERROR_MESSAGE_BOX_ID).text
  end
end