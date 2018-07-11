require 'rspec'
require_relative 'get_longest_word.rb'

RSpec.describe("count_segments_method") do
  context("it returns the current word count given a string") do
    it("returns the Integer 1 when the word count is 1") do
      answer = 1
      s = "Hello"
      expect(count_segments(s)).to eql(answer)
    end

    it("returns the Integer 5 when the word count is 5") do
      answer = 5
      s = "Hello, my name is John"
      expect(count_segments(s)).to eql(answer)
    end

    it("returns the Integer 4 when the word count is 4") do
      answer = 4
      s = "love live! mu'sic forever"
      expect(count_segments(s)).to eql(answer)
    end

  end
end
