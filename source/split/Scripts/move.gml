for (i=0;i<argument1;i+=1) {
   if (place_free(x+argument0,y-i)) {
       x += argument0;
       y -= i;
       exit;
   }
}