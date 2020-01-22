require 'testrocket'
using TestRocket

# BASIC USAGE
# +-> { block that should succeed }
# --> { block that should fail }
def leap?(year)
  return case
         when year % 400 == 0 ; true
         when year % 100 == 0 ; false
         when year % 4 == 0 ; true
         else ; false
         end
end

[[2004,true],[1900,false],[2000,true],[1998,false]].each do |year, result|
  !-> { "Is #{year} leap?" }
  !-> { "Result : #{result}" }
  +-> { leap?(year) == result }
end
