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

