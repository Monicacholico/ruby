class Clip
  attr_reader :comments
  def initialize
    @comments = []
  end

  def add_comment(comment)
    comments << comment
  end

  def play
    puts "Playing #{object_id}..."
  end
end

class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_minute
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments


# --------------------- MODULES -----------------------------

module MyModule
  def first_method
    puts "first_method called"
  end
  def second_method
    puts "second_method called"
  end
end

class MyClass
  include MyModule
end

my_object = MyClass.new
my_object.first_method
my_object.second_method



module Friendly
  def method_one
    puts "hello from Friendly"
  end
end

module Friendlier
  def method_two
    puts "hello from Friendlier!!"
  end
end

class MyClass
  include Friendly
  include Friendlier
end


my_object = MyClass.new
my_object.method_one
my_object.method_two

class ClassOne
  include Friendly
end

class ClassTwo
  include Friendly
end

ClassOne.new.my_method
ClassTwo.new.my_method


class MySuperClass
end

class MySubclass < MySuperClass
  include Friendly
  include Friendlier
end

subclass_instance = MySubclass.new
subclass_instance.method_one
subclass_instance.method_two

