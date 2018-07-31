class Counter
  def initialize
    @count = 0
  end
  def increment
    @count +=1
    puts @count
  end
end

a = Counter.new
b = Counter.new
c = b
d = c

a.increment
b.increment
c.increment
d.increment


class CelestialBody
  attr_accessor :type, :name
end

altair = CelestialBody.new
altair.name = "Altair"
altair.type = "star"
polaris = altair
polaris.name = "Polaris"
vega = polaris
vega.name = "Vega"

puts altair.name, polaris.name, vega.name

puts altair.object_id
puts polaris.object_id
puts vega.object_id

altair = CelestialBody.new
altair.name = 'Altair'
altair.type = 'star'
polaris = CelestialBody.new
polaris.name = 'Polaris'
polaris.type = 'star'
vega = CelestialBody.new
vega.name = 'Vega'
vega.type = 'star'

puts altair.name, polaris.name, vega.name

puts altair.inspect, polaris.inspect, vega.inspect


bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
  body
end

bodies["Mars"].name = "Mars"
bodies["Europa"].name = "Europa"
bodies["Europa"].type = "Moon"
bodies["Venus"].name = "Venus"

p bodies["Mars"]
p bodies["Europa"]
p bodies["Venus"]


puts bodies


bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
  "I'm a little teapot"
end

p bodies["Mars"]
p bodies["Mars"]

greetings = Hash.new do |hash, key|
    hash[key] ="Hi, #{key}"
end

p greetings ["Kayla"]

p greetings
puts greetings

bodies = Hash.new do |hash, key|
  body = CelestialBody.new
  body.type = "planet"
  hash[key] = body
end

p bodies["Mars"]

foods = Hash.new ([])
foods["A"] << "Apple"
foods["A"] << "Avocado"
foods["B"] << "Bacon"
foods["B"] << "Bread"
p foods ["A"]
p foods ["B"]
p foods

foods = Hash.new {|hash, key| []}
foods["A"] << "Apple"
foods["A"] << "Avocado"
foods["B"] << "Bacon"
foods["B"] << "Bread"
p foods["A"]
p foods["B"]
p foods


foods = Hash.new {|hash, key| hash[key] = []}
foods["A"] << "Apple"
foods["A"] << "Avocado"
foods["B"] << "Bacon"
foods["B"] << "Bread"
p foods["A"]
p foods["B"]
p foods

letters = ["a", "c", "a", "b", "c", "a"]

counts = Hash.new(0)

letters.each do |letter|
  counts[letter] += 1
end

p counts














