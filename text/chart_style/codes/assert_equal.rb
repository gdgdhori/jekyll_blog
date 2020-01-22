#+begin_src ruby
require 'colorize'

def assert_equal(expected, result)
  if expected == result
    puts 'true'.green
  else
    puts 'false'.red
  end
end

assert_equal(1, 1)
assert_equal(1, 2)
#+end_src
