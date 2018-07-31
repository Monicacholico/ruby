#Get my number game
#Written by Monica

puts "Bienvenido a 'Adivina mi numero'!"
print "Como te llamas?"
input = gets
name = input.chomp

puts "Bienvenido, #{name}!"

#Store a random number for the player to guess
puts "Tengo un numero del 1 al 100."
puts "Puedes adivinarlo?"
target = rand(100) + 1

#Track how many guesses the player has made
num_guesses = 0

#Track whether the player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it

	puts "Tienes #{10 - num_guesses} oportunidades para adivinarlo"
	print "Adivina ahora: "
	guess = gets.to_i

	num_guesses += 1

	#Compare the guess to the target
	#Print the approriate message

	if guess < target
		puts "Oops. Tu numero esta BAJO."
	elsif guess > target
		puts "Oops. Tu numero esta ALTO."
	elsif guess == target
		puts "Excelente, #{name}!"
		puts "Adivinaste mi numero en #{num_guesses} oportunidades!"
		guessed_it = true
	end

end

#if player ran out of turns, tell them what the number was.
unless guessed_it
	puts "Lo siento. NO pudiste adivinar mi numero. (Era #{target}.)"
end
