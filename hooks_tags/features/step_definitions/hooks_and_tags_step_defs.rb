Given("I have a before hook in place") do
  p @users
end

Then("I can validate the information in the before hook") do
  expect(@users[0]).to eql ('Dave')
end