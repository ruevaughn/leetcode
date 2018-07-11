require 'rspec'
require_relative 'get_longest_word.rb'

RSpec.describe("count_segments_method") do
  it("returns the integer 5") do
    string = "Hello"
    expect(count_segments(string)).to eql(string.length)
  end
end
