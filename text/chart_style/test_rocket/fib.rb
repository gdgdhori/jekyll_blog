require 'testrocket'
using TestRocket

# BASIC USAGE
# +-> { block that should succeed }
# --> { block that should fail }
def fib(n)
  return case n
         when 0 ; 0
         when 1 ; 1
         else fib(n-1)+fib(n-2)
         end
end

[0,1,1,2,3,5,8,13,21,34].each_with_index do |result, index|
  !-> { "fib(#{index})?" }
  !-> { "Result : #{result}" }
  +-> { fib(index) == result }
end
