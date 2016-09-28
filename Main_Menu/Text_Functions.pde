//The text that appears on the main menu
void mainMenu_text()
{
  textAlign(CENTER);
  textSize(80);
  fill(255);
  text("Start", 450, 300);
  text("Levels", 450, 475);
  textSize(70);
  text("U", 850, 670);
  strokeWeight(7);
  textSize(85);
  text("BREAKOUT",450,140);
}

//The text and button_creator call which allows us to move back to the start screen 
void backButton_text()
{
 button_creator(20,20,100,40,dark_blue,0,4);
 textSize(30);
 fill(255);
 text("Back", 70, 50); 
}

//The text that appears when the user does not pass a level
void gameOver_text()
{
  background(0);
  textSize(150);
  fill(255, 0, 0);
  text("GAMEOVER", 450, 300);
}

//The text that appears when a user beats a level
void winner_text()
{
  background(0);
  textSize(150);
  fill(65, 209, 70);
  text("WINNER", 450, 300);
}

//Additional text and button_creator calls at the end of a level
void levelEnd()
{
  textSize(80);
  text("Your score is:", 390, 400);
  text(Score, 710, 400);
  button_creator(235,450,430,150,dark_blue,10,17);
  fill(255);
  textSize(75);
  text("Main Menu", 450, 550);
}

//This code resets various varibles so that the level resets everysingle time
//a user wins or loses a match such as platform and ball location, and recreating
//the bricks
void reset()
{
   one.x = 500;
   one.y = 625;
   two.x = 500;
   two.y = 625;
   check = 0;
   Arr1[0][0] = 1;
   Arr1[0][1] = 2;
   Arr1[0][2] = 3;
   Arr1[0][3] = 2;
   Arr1[0][4] = 1;
   Arr1[1][0] = 2;
   Arr1[1][1] = 3;
   Arr1[1][2] = 4;
   Arr1[1][3] = 3;
   Arr1[1][4] = 2;
   Arr1[2][0] = 1;
   Arr1[2][1] = 2;
   Arr1[2][2] = 3;
   Arr1[2][3] = 2;
   Arr1[2][4] = 1;
   x_pos = 450;
   if(Score > High_Score)
    High_Score = Score;
   XP += Score;
   Score = 0;
   player3.play();
   location = "START"; 
}

//This code allows a users XP and high score to be displayed at the main menu
void XP_HighScore()
{
  textSize(40);
  text("XP:", 35, 620);
  text(XP, 100, 620);
  text("High Score:", 115, 670);
  text(High_Score, 260, 670); 
}

//Code that starts up a level and runs in the background while the user is playing
//such as updating the score
void levelinitialize(String location)
{
  button = 0;
  fill(255);
  textSize(40);
  background(0);
  text("Score:", 70, 40);
  text(Score, 150, 40);
  textSize(150);
  text(location, 450, 300);
  fill(plat_color);
  rect(x_pos, y_pos, plat_size_x, plat_size_y);
}
//This funciton is called from Platform.
// It updates the text associated with a level as the neccsary place so it looks smooth
void platform_text(String Level)
{
  fill(255);
  textSize(40);
  text("Score:", 70, 40);
  text(Score, 150, 40);
  textSize(150);
  text(Level, 450, 300);
  fill(plat_color);
}