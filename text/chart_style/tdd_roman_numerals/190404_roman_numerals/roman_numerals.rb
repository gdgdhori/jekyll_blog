require './assert_equal'
def return_roman(num)
  digit = num.to_s.size
  if digit == 1
    one, four, five, nine = 'I','IV','V','IX'
  elsif digit == 2
    one, four, five, nine = 'X',"XL",'L','XC'
  end

  n = num.to_s[0].to_i
  case n
  when 1,2,3 then return one*n
  when 4 then return four
  when 5,6,7,8 then return five+one*(n-5)
  when 9 then return nine
  end
end
def to_roman(num)
  p num
  arabic = []
  4.times do |i|
    arabic << residue = num % 10**(i+1)
    num = num - residue
  end
  roman = []
  arabic.each do |a|
    roman << return_roman(a)
  end
  return roman.reverse.join
end

[[1,'I'],[2,'II'],[5,'V'],[8,'VIII'],[9,'IX'],
 [10,'X'],[11,'XI'],[19,'XIX'],
 [49,'XLIX'],[89,'LXXXIX'],[99,'XCIX'],
# [101,'CI'],[111,'CXI']
].each do |index, expected|
  assert_equal(expected, to_roman(index))
end
