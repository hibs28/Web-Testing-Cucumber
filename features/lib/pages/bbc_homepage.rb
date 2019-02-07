require 'capybara/dsl'

class BBCHomepage
  include Capybara::DSL

  # Page objects
  HOMEPAGE_URL = 'https://www.bbc.co.uk'.freeze
  SIGN_UP_BUTTON_ID = 'idcta-link'.freeze
  
  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_login_button
    find(:id, SIGN_UP_BUTTON_ID).click
  end
end