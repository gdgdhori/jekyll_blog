class String
  def hello
    name = self
    puts "hello #{name}"
  end
end
name = ARGV[0]
# p name.class
# p name.methods
name.hello
