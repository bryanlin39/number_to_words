require('rspec')
require('numbers_backup')

describe('Fixnum#number2word') do
  it("returns the corresponding word for a single digit") do
    expect(1.number2word()).to(eq("one"))
  end

  it("returns the corresponding word for a number in the teens") do
    expect(13.number2word()).to(eq("thirteen"))
  end

  it("returns the corresponding word for a number with 2 digits") do
    expect(45.number2word()).to(eq("forty five"))
  end
end
