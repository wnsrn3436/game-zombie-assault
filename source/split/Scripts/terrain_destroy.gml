//terrain_destroy(size,x,y,outline col)
//NOTE: origin of destrutable obects must be 0,0!
texture_set_interpolation(false);

draw_set_color(argument3);//Set the color you want, outline color of sprite ill be this.

draw_rectangle(x,y,x+sprite_width,y+sprite_height,0);//This sets the background for our sprite
draw_sprite(sprite_index,image_index,x,y);//Now we draw the sprite on its background
draw_circle(argument1,argument2,argument0,0);//Next we set this is the area of destruction
//argument1=x argument2=y argument0=circle radius

terrain=sprite_create_from_screen(x,y,sprite_width,sprite_height,true,true,false,true,0,0);//make a sprite out of the things we drew above

oldterrain = sprite_index;//get the old sprite saved in memory (or variable) for later
sprite_index = terrain; //set this sprite to the one we just made

if(oldterrain > 0) then sprite_delete(oldterrain);//if nododys using the the old image delete the old sprite, we dont need it anymore!


texture_set_interpolation(true); //reset our values