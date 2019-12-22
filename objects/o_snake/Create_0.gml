/// @description Init Snake
enum snake {
	move_right,
	move_left
}

state = choose(snake.move_right, snake.move_left);
h_speed = random_range(0.5,1.2); 