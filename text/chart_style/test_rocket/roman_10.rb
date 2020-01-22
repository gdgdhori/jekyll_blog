require 'testrocket'
using TestRocket

# BASIC USAGE
# +-> { block that should succeed }
# --> { block that should fail }
def roman(arabic)
  one, five, ten = "I", "V", "X"
  return case arabic
         when 1..3 ; one*arabic
         when 4  ; one + five
         when 5  ; five
         when 6..8  ; five + one *(arabic-5)
         when 9  ; one + ten
         end
end

def roman10(arabic)
  arabic = arabic/10
  one, five, ten = "X", "L", "C"
  return case arabic
         when 1..3 ; one*arabic
         when 4  ; one + five
         when 5  ; five
         when 6..8  ; five + one *(arabic-5)
         when 9  ; one + ten
         end
end

[#[1,'I'],[2,'II'],[4,'IV'],[5,'V'],[8,'VIII'],[9,'IX']
 [10,'X'],[20,'XX'],[40,'XL'],[50,'L'],[80,'LXXX'],[90,'XC']
].each do |arabic, roman|
  !-> { "roman(#{arabic})?" }
  !-> { "Result   : #{roman10(arabic)}" }
  !-> { "Expected : #{roman}" }
  +-> { roman10(arabic) == roman }
end
