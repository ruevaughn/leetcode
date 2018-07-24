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
      num_1_indice = nums.index(result)
      num_2_indice = nums.index(num)
      if num_1_indice == num_2_indice
        num_2_indice = nums.rindex(num)
        if num_1_indice == num_2_indice
          num_1_indice = nums.rindex(result)
        end
        answer = [num_1_indice, num_2_indice]
      else
        answer = [num_1_indice, num_2_indice]
      end
    end
  end   
  answer
end
