
# ---------------- INPUTS FOR USER -----------------------

print "What's your name?"

input = gets

name = input.chomp

puts "Welcome, #{name}!"


#----------------- STRINGS TO NUMBER ----------------------


print "Make a guess"

guess = gets.to_i

puts guess


# ---------------- RANDOM NUMBERS ---------------------------
# A random number from 1 to 100

puts rand(100) + 1
puts rand(1000) + 1

puts rand(25..150)
puts rand(12856..13000) + 1


# ----------------- METHOD DEFINITIONS AND OPTIONAL PARAMETERS --------------------

def classical_ballet(name ="Giselle", act = 1, choreographer)
  print "What's your favorite ballet?"
  input = gets
  name = input.chomp
  if name == "Giselle"
    puts "This is the most old and classical ballet"
  else
    puts "This is not the oldest ballet"
  end
  print "How many acts does it have?"
  act = gets.to_i
  if act < 2
    puts "This is a mini-ballet"
  else
    puts "This is a master piece"
  end
  print "Whose its choreographer?"
  input2 = gets
  choreographer = input2.chomp
  if choreographer == "Marius Petipa"
    puts " Marius Petipa was a genius"
  else "This is not a ballet from Marius Petipa"
  end
  puts "Your favorite ballet is #{name} with #{act} acts, from #{choreographer}"
end

classical_ballet("","","")

def ballerina_features(level, feet)
  print "What's your practice level?"
  input = gets
  level = input.chomp
  print "What's your feet type?"
  input2 = gets
  feet = input2.chomp
  puts "Your level is #{level} and you have a foot type of #{feet}"
end

ballerina_features("", "")










