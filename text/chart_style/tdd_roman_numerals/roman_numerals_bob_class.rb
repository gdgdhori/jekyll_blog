require './assert_equal'
class Integer
  def mk_roman(num, chars)
    one, five, ten = chars
    return case num
           when 0,1,2,3 then one * num
           when 4       then one + five
           when 5,6,7,8 then five + one*(num-5)
           when 9       then one + ten
           end
  end

  def sel_chars(digits)
    chars = [['I','V','X'],
             ['X','L','C'],
             ['C','D','M'],
             ['M','MMMMM', 'MMMMMMMMMM'],
             ['MMMMMMMMMM'],
            ]
    return chars[digits]
  end

  def to_roman
    p num = self
    arabic = []
    num.to_s.size.times do |i|
      arabic << (num/10**i)%10
    end
    p arabic
    roman = []
    arabic.each_with_index do |num, i|
      roman << mk_roman(num, sel_chars(i))
    end
    p roman
    return roman.reverse.join
  end
end

if __FILE__ == $PROGRAM_NAME
  [[4, 'IV'],[9, 'IX'], [38, 'XXXVIII'],[40, 'XL'],
   [42, 'XLII'],[97, 'XCVII'], [439, 'CDXXXIX'],
   [732, 'DCCXXXII'], [961, 'CMLXI'],
   [2449, 'MMCDXLIX'],[1999, 'XIX']
  ].each do |num, roman|
    assert_equal(roman, num.to_roman)
  end
end

puts ARGV[0].to_i.to_roman
