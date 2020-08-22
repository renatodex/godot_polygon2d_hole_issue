extends Node2D


var merge_array = null

func _ready():
	merge_array = Geometry.merge_polygons_2d(
		$Polygon1.polygon,
		$Polygon2.polygon
	)
		
	# The merge operation returns the external polygon
	$Polygon1.set_polygon(merge_array[0])
	
	# It also return the "Hole" polygon
	$Polygon1.set_polygon(merge_array[1])
	
	# However, 
	$Polygon1.set_polygons(merge_array)
	
	# Hide polygon for cleaning purposes
	$Polygon2.hide()

func _process(delta_time):
	update()
