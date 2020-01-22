# frozen_string_literal: true

def greetings
  puts "Hello. I\'m mac. Who are you?"
end

def hello(name)
  puts "Hello #{name}.  How are you?"
end
greetings
name = gets.chomp
hello name
