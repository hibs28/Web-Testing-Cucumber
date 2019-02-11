Given("I have a before hook in place") do
  p @users
end

Then("I can validate the information in the before hook") do
  expect(@users[0]).to eql ('Dave')
end

Given("I use a tag") do
  p 'this is a given for tag use'
end

Then("only this test will run") do
  p 'only these two will run if I use the tag'
end