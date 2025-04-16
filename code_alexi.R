turtle <- function() {
  
  # Initialize empty vectors to store x and y coordinates
  x_coords <- numeric(0)
  y_coords <- numeric(0)
  
  # Current position and angle
  x <- 0
  y <- 0
  angle <- 0  # in radians
  
  # Outer loop: 20 circles
  for (i in 1:20) {
    # Inner loop: each circle (180 steps of 2 degrees each)
    for (j in 1:180) {
      # Move forward 1 unit
      x <- x + cos(angle)
      y <- y + sin(angle)
      
      # Store the coordinates
      x_coords <- c(x_coords, x)
      y_coords <- c(y_coords, y)
      
      # Turn right 2 degrees (in radians)
      angle <- angle - (2 * pi / 180)
    }
    
    # After completing a circle, turn right 18 degrees
    angle <- angle - (18 * pi / 180)
  }
  
  # Create a data frame with the coordinates
  turtle_path <- data.frame(x = x_coords, y = y_coords)
  
  # Plot the turtle's path
  plot(turtle_path$x, turtle_path$y, type = "l", col = "blue", xlab = "", ylab = "" )
  
  
}

turtle()

?plot

