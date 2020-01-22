require 'testrocket'
using TestRocket

# BASIC USAGE
# +-> { block that should succeed }
# --> { block that should fail }
def mk_characters(arabic, one,five,ten)
  return case arabic
         when 1..3 ; one*arabic
         when 4  ; one + five
         when 5  ; five
         when 6..8  ; five + one *(arabic-5)
         when 9  ; one + ten
         end
end

def roman(arabic)
  p thousand = arabic / 1000
  p hundred = arabic / 100
  p ten = (arabic %100)/ 10
  p one = arabic % 10
  r_one = mk_characters(one, "I", "V", "X")
  r_ten = mk_characters(ten, "X", "L", "C")
  r_hundred = mk_characters(hundred, "C", "D", "M")
  r_thousand = mk_characters(thousand, "M", "M"*5, "M"*10)
  [r_thousand, r_hundred, r_ten, r_one].join
end

[#[1,'I'],[2,'II'],[4,'IV'],[5,'V'],[8,'VIII'],[9,'IX'],
#[10,'X'],[20,'XX'],[40,'XL'],[50,'L'],[80,'LXXX'],[90,'XC'],
 # [11,'XI'], [14, 'XIV'],[15,'XV'],[19,'XIX'], [38,'XXXVIII'],
# [42,'XLII'], [49, 'XLIX'],[51,'LI'],[97,'XCVII'],[99,'XCIX'],
 [100,'C'], [1000, 'M'],
 [439,'CDXXXIX'],[483,'CDLXXXIII'],[961,'CMLXI'],[999,'CMXCIX'],
 [1961,'MCMVXI'],
].each do |arabic, roman|
  !-> { "roman(#{arabic})?" }
  !-> { "Result   : #{roman(arabic)}" }
  !-> { "Expected : #{roman}" }
  +-> { roman(arabic) == roman }
end
