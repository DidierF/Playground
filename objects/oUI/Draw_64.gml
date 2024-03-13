var playerHealth = global.playerHealth;
var playerHealthMax = global.playerHealthMax;
var playerHealthFrac = frac(playerHealth);
playerHealth -= playerHealthFrac;

for (var i = 1; i <= playerHealthMax; i++) {
	var imageIndex = i > playerHealth ? 1 : 0;

	if (i == playerHealth + 1) {
		imageIndex += playerHealthFrac > 0 ? 1 : 0;
		imageIndex += playerHealthFrac > 0.25 ? 1 : 0;
		imageIndex += playerHealthFrac > 05 ? 1 : 0;
	}

	var scale = window_get_width() / 360;
	draw_sprite_ext(
		sHealth,
		imageIndex,
		8 + (i - 1) * 16 * scale,
		8,
		scale,
		scale,
		image_angle,
		image_blend,
		image_alpha
	);
}
