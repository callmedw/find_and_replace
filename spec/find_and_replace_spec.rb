require('rspec')
require('./lib/find_and_replace')

describe('String#find_and_replace') do

  it("find and replace one word in a one word sentence") do
    expect(('hello there').find_and_replace('hello', 'goodbye')).to(eq('Goodbye there'))
  end

  it("find and replace multiple words in a sentence") do
    expect(('hello there friend').find_and_replace('hello there', 'goodbye forever')).to(eq('Goodbye forever friend'))
  end

  it("find and replace one word in a one word sentence, ignoring case") do
    expect(('hEllO tHere').find_and_replace('hello', 'goodbye')).to(eq('Goodbye there'))
  end

  it("capitalizes the first letter of the returned sentence or word") do
    expect(('hello there').find_and_replace('hello', 'goodbye')).to(eq('Goodbye there'))
  end

  it("find and replace words in a sentence, including numbers") do
    expect(('hello1 there').find_and_replace('hello1', 'goodbye')).to(eq('Goodbye there'))
  end

end
