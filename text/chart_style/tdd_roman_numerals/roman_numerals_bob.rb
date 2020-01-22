require './assert_equal'
def roman(num)
  digits = [0]
  num.to_s.size.times do |i|
    num = num - digits[-1]
    digits << num % 10**(i+1).to_i
  end
  p digits
  roman = []
  digits[1..-1].each do |digit|
    roman << case digit
          when 1 then 'I'
          when 2 then 'II'
          when 3 then 'III'
          when 4 then 'IV'
          when 5 then 'V'
          when 6 then 'VI'
          when 7 then 'VII'
          when 8 then 'VIII'
          when 9 then 'IX'
          when 10 then 'X'
          when 20 then 'XX'
          when 30 then 'XXX'
          when 40 then 'XL'
          when 50 then 'L'
          when 60 then 'LX'
          when 70 then 'LXX'
          when 80 then 'LXXX'
          when 90 then 'XC'
          when 100 then 'C'
          when 200 then 'CC'
          when 300 then 'CCC'
          when 400 then 'CD'
          when 500 then 'D'
          when 600 then 'DC'
          when 700 then 'DCC'
          when 800 then 'DCCC'
             when 900 then 'CM'
             when 1000 then 'M'
             when 2000 then 'MM'
             end
    p roman
  end
    return roman.reverse.join
end
[[4, 'IV'],[9, 'IX'], [38, 'XXXVIII'],
 [42, 'XLII'],[97, 'XCVII'], [439, 'CDXXXIX'],
 [732, 'DCCXXXII'], [961, 'CMLXI'],
 [2449, 'MMCDXLIX']].each do |num, roman|
  assert_equal(roman, roman(num))
end

puts roman(ARGV[0].to_i)
