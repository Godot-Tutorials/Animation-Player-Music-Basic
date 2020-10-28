extends AnimationPlayer

var animation = AnimationResource.new()
var getMusicResource = animation.getMusicResource()

func _ready() -> void:
	self.add_animation("ResourceMusic", getMusicResource)
	self.play("Music")
	# self.stop()
