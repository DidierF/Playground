// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SlimeChase(){
	sprite_index = sprMove;
	if (instance_exists(target)) {
		xTo = target.x;
		yTo = target.y;
		
		var distanceToGo = point_distance(x, y, xTo, yTo);
		
		image_speed = 1.0;
		dir = point_direction(x, y, xTo, yTo);
		if (distanceToGo > enemySpeed) {
			hSpeed = lengthdir_x(enemySpeed, dir);
			vSpeed = lengthdir_y(enemySpeed, dir);
		} else {
			hSpeed = lengthdir_x(distanceToGo, dir);
			vSpeed = lengthdir_y(distanceToGo, dir);
		}
		
		if (hSpeed != 0) {
			image_xscale = sign(hSpeed);
		}
		EnemyTileCollision();
	}
}