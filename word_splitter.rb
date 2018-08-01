class WordSplitter
  include Enumerable
  attr_accessor :string
  def each
    string.split(" ").each do |word|
      yield word
    end
  end
end

splitter = WordSplitter.new
splitter.string = "how do you do"

splitter.each do |word|
  puts word
end

p splitter.find_all { |word| word.include?("d")}
p splitter.reject { |word| word.include?("d")}
p splitter.map { |word| word.reverse}

p splitter.any? {|word| word.include?("e")}
p splitter.count
p splitter.first
p splitter.sort

p splitter.all?
p splitter.chunk
p splitter.collect
p splitter.collect_concat
p splitter.count
p splitter.cycle
p splitter.detect("d")
# p splitter.drop("d")
p splitter.drop_while
p splitter.each_cons(1)
p splitter.each_entry
p splitter.each_slice(2)
p splitter.each_with_index
p splitter.each_with_object(3)
p splitter.entries
p splitter.find("do")
p splitter.find_index(1)

p splitter.flat_map
p splitter.grep(1)
p splitter.group_by
p splitter.inject
p splitter.lazy
p splitter.reverse_each

p splitter.take(nil?)
p splitter.zip






