require('rspec')
require('./lib/pecker_picker.rb')

describe('String#pecker_picker') do

  it("tells the user if their first string input appears in their second string intput") do
    expect("p".pecker_picker("p")).to(eq(1))
  end

  it("tells the user how many times their selected word appears when given the same word") do
    expect("peter".pecker_picker("peter")).to(eq(1))
  end

  it("tells the user how many times their selected word appears in another string intput with multiple words") do
    expect("peter piper picked a pack".pecker_picker("peter")).to(eq(1))
  end

  it("tells the user how many times their selected word appears in another string intput with multiple words when the word appears more than once") do
    expect("peter piper picked a pack of pickele peppers. how many peppers did peter piper pick?".pecker_picker("peter")).to(eq(2))
  end

  it("it handles capitalization to tells the user how many times their selected word appears in another string intput with multiple words") do
    expect("Peter piper picked a pack".pecker_picker("peter")).to(eq(1))
  end

  it("it handles punctuation to tells the user how many times their selected word appears in another string intput with multiple words") do
    expect("Peter, piper picked a pack; peter?".pecker_picker("peter")).to(eq(2))
  end

end
