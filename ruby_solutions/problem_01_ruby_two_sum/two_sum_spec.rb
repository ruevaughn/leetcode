require 'rspec'
require_relative 'two_sum.rb'

RSpec.describe("Two Sum Problem") do
  context("It returns the indices of the two integers of the array") do
    it("returns the [0,1] when given [2, 7, 11, 15], target = 9") do
      answer = [0,1]
      nums = [2,7,11,15]
      target = 9
      expect(count_segments(s)).to eql(nums, target)
    end

    it("returns the correct indices when they are the same number") do
      answer = [0,1]
      input = [3,3]
      target= 6
      expect(count_segments(s)).to eql(answer)
    end

  end
end
