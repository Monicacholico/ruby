#Get my number game
#Written by Monica

puts "Welcome  to 'Get My Number'!"
print "What's your name?"
input = gets
name = input.chomp

puts "Welcome, #{name}!"

#Store a random number for the player to guess
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

#Track how many guesses the player has made
num_guesses = 0

#Track whether the player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it

	puts "You've got #{10 - num_guesses} guesses left"
	print "Make a guess: "
	guess = gets.to_i

	num_guesses += 1

	#Compare the guess to the target
	#Print the approriate message

	if guess < target
		puts "Oops. Your guess was LOW."
	elsif guess > target
		puts "Oops. Your guess was HIHG."
	elsif guess == target
		puts "Good job, #{name}!"
		puts "You guessed my number in #{num_guesses} guesses!"
		guessed_it = true
	end

end

#if player ran out of turns, tell them what the number was.
unless guessed_it
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end

		


