
lines = []

File.open("reviews.txt") do |review_file|
  lines = review_file.readlines
end


relevant_lines = lines.find_all{ |line| line.include?("Truncated")}


# lines.each do |line|
#   if line.include?("Truncated")
#     relevant_lines << line
#   end
# end

puts relevant_lines

reviews = relevant_lines.reject {|line| line.include?("--")}

# def reject
#   kept_items = []
#   self.each do |item|
#     unless yield(item)
#       kept_items << item
#     end
#   end
#   kept_items
# end

string = reviews.first
words = string.split(" ")
p words

def find_adjective(string)
  words = string.split(" ")
  index = words.find_index("is")
  words[index + 1]
end


# adjective = find_adjective(reviews.first)
#
# puts adjective

adjectives = reviews.map do |review|
  adjective = find_adjective(review)
  "'#{adjective.capitalize}'"
end

puts "The critics agree, Truncated is:"
puts adjectives