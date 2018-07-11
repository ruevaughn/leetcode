# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# leetcode.com                                                        #
# Problem: 434. Number of Segments in a String                        #
# url: https://leetcode.com/problems/number-of-segments-in-a-string/  #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Their Ruby Version                                                  #
# puts RUBY_VERSION                                                   #
# $ Ruby 2.4.4                                                        #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# https://leetcode.com/problems/number-of-segments-in-a-string/       #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Count the number of segments in a string, where a segment is        #
# defined to be a contiguous sequence of non-space characters.        #
# Please note that the string does not contain any non-printable      #
# characters.                                                         #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

# @param {String} s
# @return {Integer}
def count_segments(s)
  regex =  /([a-z]+)[!\b && !\W]?/i
  s_array = s.scan(regex).flatten
  s_result = s_array.inject(''){| prev, current | prev.length > current.length ? prev : current}
  s_result.length
end
