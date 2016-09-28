// LevelSelect calls the button function six times for the six levels in this game
void LevelSelect()
{
   image(start, 0, 0, width, height);
   
   button_creator(100,100,300,150,dark_blue,10,5);
   button_creator(100,300,300,150,dark_blue,10,6);
   button_creator(100,500,300,150,dark_blue,10,7);
   button_creator(500,100,300,150,dark_blue,10,8);
   button_creator(500,300,300,150,dark_blue,10,9);
   button_creator(500,500,300,150,dark_blue,10,10);

 
 // Assigns text to the levels buttons created above
   String [] Level = {"1", "2", "3", "4", "5", "6"};
   String [] Level_type = {"Score of 20", "Infinite Easy", "Bricks: Easy", "Infinite: Hard", "Bricks:Medium", "Bricks: Hard"};
   int i = 0;
    for(int x = 210; x <= 900; x += 400) //Assigns x-value for text
     {
       {
        for (int y = 180; y <= 700; y += 200) //Assigns y-value for text
         {
         textSize(70);
         fill(255);
         text("Level", x, y);        //Assigns level number 
         text(Level[i], x + 150, y); //To the buttons
         textSize(35);       
         text(Level_type[i], x +40, y + 50); //Assigns level type to the button
         i++;
         }
       }
     }
  backButton_text();  
}
// This function will be activated when the user misses the ball and it goes out the 
//bottom of the screen

void GAMEOVER()
{
   gameOver_text();
   levelEnd();
   if ((mousePressed == true)&& (mouseX >= 235) && (mouseX <= 685)&& (mouseY >= 450) && (mouseY <= 600))
  {
    reset();
  }
}
//This function is activated when a user destroys all the bricks in a level
void Pass_level()
{
 winner_text();
 levelEnd();
 if ((mousePressed == true)&& (mouseX >= 235) && (mouseX <= 685)&& (mouseY >= 450) && (mouseY <= 600))
  {
    reset();
  }
}