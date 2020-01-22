require 'testrocket'
using TestRocket

# BASIC USAGE
# +-> { block that should succeed }
# --> { block that should fail }
def hello(name)
  "hello #{name}!"
end

3.times do 
  !-> { "test" }
  +-> { hello('bob') == 'hello bob!' }
  ~-> { hello('bob') == 'hello rudy!' }
  --> { hello('bob') == 'hello rudy!' }
end
