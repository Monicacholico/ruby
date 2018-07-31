class Blender
	def close_id
		puts "Sealed tight!"
	end
	def blend(speed)
		puts "Spinning on #{speed} setting."
	end
end

blender = Blender.new

blender.close_id
blender.blend("high")