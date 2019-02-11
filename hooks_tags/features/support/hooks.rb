Before do 
  @users = ['Dave', 'Gill', 'Jon']
end

After do 
  # p 'Im after hook and I have run'
end

Before('@test2') do
  p 'this is specific output for test 2'
end