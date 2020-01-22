require './assert_equal'
$chars = [['I','V','X'],
         ['X','L','C'],
         ['C','D','M'],
         ['M']]

def mk_roman(num, digits)
  one, five, ten = $chars[digits]
  return case num
         when 0,1,2,3 then one * num
         when 4       then one + five
         when 5,6,7,8 then five + one*(num-5)
         when 9       then one + ten
         end
end

def roman(num)
  p num
  arabic = []
  num.to_s.size.times do |i|
    arabic << (num/10**i)%10
  end
  p arabic
  roman = []
  arabic.each_with_index do |num, i|
    roman << mk_roman(num, i)
  end
  p roman
  return roman.reverse.join
end

[[4, 'IV'],[9, 'IX'], [38, 'XXXVIII'],[40, 'XL'],
 [42, 'XLII'],[97, 'XCVII'], [439, 'CDXXXIX'],
 [732, 'DCCXXXII'], [961, 'CMLXI'],
 [2449, 'MMCDXLIX'],#[1999, 'XIX']
].each do |num, roman|
  assert_equal(roman, roman(num))
end
