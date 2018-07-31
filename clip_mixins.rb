module AcceptComments
  def comments
   @comments = @comments || []
  end
  def add_comment(comment)
    comments << comment
  end
end

class ClipMixins
  def play
    puts "Playing #{object_id}..."
  end
end

class Video < ClipMixins
  include AcceptComments
  attr_accessor :resolution
end

class Song < ClipMixins
  include AcceptComments
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptComments
  def initialize
    @format = "JPEG"
  end
  def show
    puts "Displaying #{object_id}"
  end
end


video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat.")
photo = Photo.new
photo.add_comment("Beautiful colors.")

p video.comments, song.comments, photo.comments


video.play
song.play
photo.show