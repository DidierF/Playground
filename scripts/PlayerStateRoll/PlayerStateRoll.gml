function PlayerStateRoll(){
	// Movement
	hSpeed = lengthdir_x(speedRoll, direction);
	vSpeed = lengthdir_y(speedRoll, direction);
	
	moveDistanceRemaining = max(0, moveDistanceRemaining - speedRoll);
	var _collided = PlayerCollision();
	
	// Update Sprite
	sprite_index = spriteRoll;
	var _totalFrames = sprite_get_number(sprite_index)/4;
	image_index = (CARDINAL_DIR * _totalFrames) + min(_totalFrames - 1, ((1 - (moveDistanceRemaining / distanceRoll)) * _totalFrames));
	
	// Change State
	if (moveDistanceRemaining <= 0) {
		state = PlayerStateFree;
	}
}