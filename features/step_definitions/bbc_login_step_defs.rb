Given("I access the bbc login page") do
  @bbc_site = BBCSite.new
  @bbc_site.bbc_homepage.visit_homepage
  @bbc_site.bbc_homepage.click_login_button
end

Given("I input incorrect username details") do
  @bbc_site.sign_in_page.fill_in_email_field('apple1997@banana.com')
end

Given("I input incorrect password details") do
  @bbc_site.sign_in_page.fill_in_password_field('apple378')
end

When("I try to login") do
  @bbc_site.sign_in_page.click_submit_button  
end

Then("I receive an error for not finding the account") do
  expect(@bbc_site.sign_in_page.error_account_message_box).to eql @bbc_site.sign_in_page.account_error
end

Given("I input short password details") do
  @bbc_site.sign_in_page.fill_in_password_field('apple')
end

Then("I receive an error for password being too short") do
  expect(@bbc_site.sign_in_page.error_password_message_box).to eql @bbc_site.sign_in_page.password_short_error
end

Given("I input only letters password details") do
  @bbc_site.sign_in_page.fill_in_password_field('hhjfhhjef')
end

Then("I receive an error for password being only letters") do 
  expect(@bbc_site.sign_in_page.error_password_message_box).to eql @bbc_site.sign_in_page.only_letter_password_error
end

Given("I input only numbers password details") do
  @bbc_site.sign_in_page.fill_in_password_field('12345678')
end

Then("I receive an error for password being only numbers") do
  expect(@bbc_site.sign_in_page.error_password_message_box).to eql @bbc_site.sign_in_page.only_number_password_error
end

Then("I receive an error for missing email") do
  expect(@bbc_site.sign_in_page.error_account_message_box).to eql @bbc_site.sign_in_page.missing_error
end

Then("I receive an error for missing password") do
  expect(@bbc_site.sign_in_page.error_password_message_box).to eql @bbc_site.sign_in_page.missing_error
end

Then("I receive an error for not correct details") do
  expect(@bbc_site.sign_in_page.error_general_message).to eql @bbc_site.sign_in_page.not_match_error
end

Given("I input a password that contains a quote") do
  @bbc_site.sign_in_page.fill_in_password_field('applteree12')
end

Then("I receive an error for password having quotes") do
  expect(@bbc_site.sign_in_page.error_password_message_box).to eql @bbc_site.sign_in_page.quote_password_error
end