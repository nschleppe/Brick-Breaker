//This page is dedicated to all the functions relating to buttons used for navigation, spcifically
// and functionallity 

//button_creator: This function recieves a large set of parameters from other functions and uses them to
//create a button, whichever location this function is called from is where the button will appear,
//what is taken is evidant from reading the variable names
void button_creator(int x, int y, int x_size, int y_size, color fill, int stroke, int button_number)  //Recieves values for a button, and creates it
{
  fill(fill);
  stroke(stroke);
  rect(x,y,x_size,y_size);
  if (mousePressed)
   {
     if ((mouseX >= x) && (mouseX <= x + x_size)&& (mouseY >= y) && (mouseY <= y + y_size))
      {
       button = button_number;
      }
   }
   
  else 
   button = 0;
  
}

//The last paramater accepted from button_creator (button_number is a number unique to each button
//This allows us to assign a unique task for each individual button to accomplish 
//Primarilly this involves moving to a diffearant aspect of the screen, but in some cases, it
//activates an upgrade or another feature of the game
void mouseClicked()
{
  player3.rewind();
  
  if (button == 1)
  {
   
   location = "Level 1";
   player3.play();
  }
  if (button == 2)
  {
   location = "LevelSelect";
   player3.play();
  }
  if (button == 3)
  {
   location = "Upgrades";
   player3.play();
  }
  if (button == 4 || button == 17)
  {
   location = "START";
   player3.play();
  }
  if (button == 5)
   {
   location = "Level 1";  
   player3.play();
   }
  if (button == 6)
  {
   location = "Level 2";
   player3.play();
  }
  if (button == 7)
  {
   location = "Level 3";
   player3.play();
  }
  if (button == 8)
  {
   location = "Level 4";
   player3.play();
  }
  if (button == 9)
  {
   location = "Level 5";
   player3.play();
  }
  if (button == 10)
  {
   location = "Level 6";
   player3.play();
  }
   if (button == 14 && XP >= 300)
   {
     player3.play();
     plat_speed += 7;
     XP -= 300; 
   }
   if (button == 15 && XP >= 100)
     {
       player3.play();
       if (plat_color == white)
        {
         plat_color = orange;
        }
       else if (plat_color == orange)
        {
         plat_color = blue;
        }
       else
        {
         plat_color = white;
        }
       XP -= 100;
     }
   if (button == 16 && XP >= 500)
     {
      player3.play();
      plat_size_x += 30;
      XP -= 500;
     }
}
     