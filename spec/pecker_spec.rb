require('rspec')
require('./lib/pecker_picker.rb')

describe('String#pecker_picker') do

  it("tells the user if their first string input appears in their second string intput") do
    expect("a".pecker_picker("a")).to(eq(1))
  end

end
