require 'testrocket'
using TestRocket

# BASIC USAGE
# +-> { block that should succeed }
# --> { block that should fail }
def roman(arabic)
  return case arabic
         when 1..3 ; 'I'*arabic
         when 4  ; 'IV'
         when 5  ; 'V'
         when 6..8  ; 'V'+'I'*(arabic-5)
         when 9  ; 'IX'
         end
end

def roman10(arabic)
  arabic = arabic/10
  return case arabic
         when 1..3 ; 'X'*arabic
         when 4  ; 'X'+'L'
         when 5  ; 'L'
         when 6..8  ; 'L'+'I'*(arabic-5)
         when 9  ; 'XC'
         end
end

[#[1,'I'],[2,'II'],[4,'IV'],[5,'V'],[8,'VIII'],[9,'IX']
 [10,'X']
].each do |arabic, roman|
  !-> { "roman(#{arabic})?" }
  !-> { "Result   : #{roman10(arabic)}" }
  !-> { "Expected : #{roman}" }
  +-> { roman10(arabic) == roman }
end
