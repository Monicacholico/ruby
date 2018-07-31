def your_name_and_age
  puts "what's your name?"
  name = gets.chomp
  puts "What's your age?"
  age = gets.chomp

  print_name_and_age name, age
end



def print_name_and_age name, age
  puts "Hi #{name}, you have told me you're #{age} years old"
end

puts your_name_and_age


list = ["I", "am", "a", "programmer", "!"]
string = ""

for item in list
  string += item + " "
end

puts string

n = 0
while n < 15
  puts n
  n = n + 1
end



n = 0
until n == 15
  puts n
  n = n + 1
end



