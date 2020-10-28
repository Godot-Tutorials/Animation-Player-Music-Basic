extends Animation

class_name AnimationResource

func getMusicResource() -> Animation:
	self.set_length(39.0) # Length needs to be equal to or greater than length of song
	self.set_loop(true) # allow the music to loop
	
	print("Length of Animation in Seconds: ", self.length, "\n")
	
	
	var track_index = self.add_track(Animation.TYPE_AUDIO)
	var musicStreamObject = preload("res://Simple Melody.wav")
	
	self.track_set_path(track_index, "/root/Node2D/AudioStreamPlayer")
	self.audio_track_insert_key(track_index, 0.0, musicStreamObject)
	var indexPos0 = self.find_track('/root/Node2D/AudioStreamPlayer')
	
	
	print("Total Tracks Set: ", self.get_track_count())
	print("Track Index Value: ", indexPos0, "\n")
	print("Create another track\n")
	
	
	return self # returns an animation
