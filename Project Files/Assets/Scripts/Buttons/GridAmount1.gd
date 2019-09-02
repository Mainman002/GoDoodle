extends TextureButton

var PixSize = 2

onready var  FuncManager = get_node("/root/MainMenu/FunctionController")

func _ready():
	connect("pressed", self, "_pressed")

func _pressed():
	if PixSize == 0:
		FuncManager.pixelGrid(0, 0, 0, 0)
		PixSize = 2
	elif PixSize == 1:
		FuncManager.pixelGrid(1, 1, 1, 1)
		PixSize = 0
	elif PixSize == 2:
		FuncManager.pixelGrid(2, 2, 2, 2)
		PixSize = 1



