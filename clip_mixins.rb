module AcceptComments
  def comments
    if @comments
      @comments
    else
      @comments = []
    end
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


video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending")
song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments


video.play
song.play

class Photo
  include AcceptComments
  def show
    puts "Displaying #{object_id}"
  end
end

photo = Photo.new
photo.add_comment("Beautiful colors.")

p photo.comments


photo.show