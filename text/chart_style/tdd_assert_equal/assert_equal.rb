require 'colorize'
def puts_vals(expected, result)
  puts "expected :: #{expected}"
  puts "result   :: #{result}"
end
def assert_not_equal(expected, result)
  puts_vals(expected, result)
  if expected != result
    print "succeeded in #{__method__}.\n".green
  else
    print "failed in #{__method__}.\n".red
  end
end

def assert_equal(expected, result)
  puts_vals(expected, result)
  case expected == result
  when true then print "succeeded in #{__method__}.\n".green
  when false then print "failed in #{__method__}.\n".red
  end
end

if $PROGRAM_NAME == __FILE__
  assert_equal(1, 1)
  assert_equal(1, 2)
  assert_not_equal(1, 2)
  assert_not_equal(1, 1)
end

