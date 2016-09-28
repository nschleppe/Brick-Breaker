//This code is responsible for everything revovlving the platform controlled by the user
void Platform(String Level)
 {
   if(x_pos < width - plat_size_x && x_pos > 0)  //Determines if the platform is within the screen
   {
     if(keyPressed)  //Determines if a key has been pressed
       {
        if (keyCode == LEFT) //Determines left arrow key has been pressed
          { 
            x_pos -= plat_speed;  //Changes the position of the platform by moving it left
          }
        if (keyCode == RIGHT) //Determines right arrow key has been pressed
          {
            x_pos += plat_speed; //Changes the position of the platform, by moving right
          }
        background(0);                                    //The next three lines redraw; the background,
        platform_text(Level);                             //the text displayed on screen for the level,
        rect(x_pos, y_pos, plat_size_x, plat_size_y);     // and the platform
       }
   }
 //If the user moves the platform off screen these statements are activated which redraws the plaform
 //on the screen, it also gives the platform the bouncy look when you hit the platform against
 //the wall
 else if (x_pos < width - plat_size_x)
  {
    x_pos = 1;
  }
 else if (x_pos > 0)
  {
    x_pos = width - (plat_size_x + 1);
  }
  
}  