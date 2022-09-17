extends Button

export(Resource) var mind

onready var name_text = get_node("clientProfile/clientName")
onready var patience_bar = get_node("clientProfile/patienceBar")
onready var timer = get_node("clientProfile/patienceBar/patienceTimer")

func _ready():
	#setting up basic parameters
	name_text.text = mind.clientName
	patience_bar.max_value = mind.patience
	patience_bar.value = mind.patience
	
	timer.wait_time = mind.patience
	timer.start()
	

func _process(delta):
	patience_bar.value = timer.time_left


func _on_patienceTimer_timeout():
	queue_free()
	pass # Replace with function body.
