# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# leetcode.com                                                        #
# Problem: 01. Two Sum                        			      #
# url: 	https://leetcode.com/problems/two-sum/description/            #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Their Ruby Version                                                  #
# puts RUBY_VERSION                                                   #
# $ Ruby 2.4.4                                                        #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#								      #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# 								      # 
# Given an array of integers, return indices of the two numbers       #
# such that they add up to a specific target.        		      #
#								      #
# You may assume that each input would have exactly one solution,     #
# and you may not use the same element twice. 			      #
# 								      #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

def two_sum(nums, target)
  answer = []
  nums.each do |num|
    result = target - num
    if nums.include? result
      answer = [nums.index(result), nums.index(num)]
    end
  end   
  answer
end
