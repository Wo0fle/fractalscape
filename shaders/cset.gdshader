shader_type canvas_item;

#include "overall.gdshaderinc"

uniform vec2 initial_z = vec2(0.0);
uniform vec2 x_value = vec2(2.0,0.0);

uniform vec2 viewport_size;

void fragment() {
	vec2 uv = FRAGCOORD.xy - viewport_size/2.0;
	//vec2 uv = UV - 0.5;
	vec2 c = uv * zoom / 1000.0 + vec2(center_x, -center_y);
	
	COLOR = draw(initial_z, c, x_value);
}