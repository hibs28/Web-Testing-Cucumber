require 'capybara/dsl'

class BBCSignInPage
  include Capybara::DSL

  attr_accessor :account_error
  attr_accessor :password_short_error

  # Page objects
  EMAIL_FIELD_ID = 'user-identifier-input'.freeze
  PASSWORD_FIELD_ID = 'password-input'.freeze
  SUBMIT_BUTTON_ID = 'submit-button'.freeze
  ERROR_ACCOUNT_MESSAGE_BOX_ID = 'form-message-username'.freeze
  ERROR_PASSWORD_SHORT_MESSAGE_BOX_ID = 'form-message-password'.freeze

  def initialize
    @account_error = "Sorry, we can’t find an account with that email. You can register for a new account or get help here."
    @password_short_error = 'Sorry, that password is too short. It needs to be eight characters or more.'
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

  def error_account_message_box
    find(:id, ERROR_ACCOUNT_MESSAGE_BOX_ID).text
  end

  def error_password_message_box
    find(:id, ERROR_PASSWORD_SHORT_MESSAGE_BOX_ID).text
  end
end