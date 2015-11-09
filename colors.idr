module TrafficLight

data color  = red | green | amber

change: color -> color
change red = green
change green = amber
change amber = red
