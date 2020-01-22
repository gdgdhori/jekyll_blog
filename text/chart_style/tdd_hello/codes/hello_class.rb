class String
  def hello
    return "Hello #{self}. Nice to see you."
  end
end

p name = String.new(gets.chomp)
p name.hello
