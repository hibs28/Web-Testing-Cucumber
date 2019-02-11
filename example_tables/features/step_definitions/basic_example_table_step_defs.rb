Given("I have more than one data row in my example table") do
end

Given(/^it includes (.*) as a string and (.*) as an interger$/) do |name, age| #This is using Regex
  age = age.to_i
  expect(name).to be_kind_of(String)
  expect(age).to be_kind_of(Integer)
end

Then(/^I can validate the (.*) & (.*) are correct$/) do |name, age|
  age = age.to_i
  expect(name).to eq('Dave').or eq('Tim')
  expect(age).to eq(23).or eq(34)
end