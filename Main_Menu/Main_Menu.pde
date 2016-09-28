void setup()
{
  //The size of the screen as well as the start menu
  size(900,700);
  start = loadImage("bricks.jpg");
  levelselector = loadImage("BrickLevel.jpg");
  
  //The central sound file that always plays in the background of our app
  Start = new Minim(this);
  player1 = Start.loadFile("Relaxing Piano Music.mp3", 2048);
  
  //On click this sound will play
  Click = new Minim(this);
  player3 = Click.loadFile("CLICK.WAV", 2048);
}

void draw()
{
 //Starting screen
 if (location == "START")    
  {
   MainMenu();
  }
  
  //Level Select Screen if clicked
 if (location == "LevelSelect")
  {
   LevelSelect();
  }
  
  //Upgrade Screen if clicked
 if (location == "Upgrades")
  {
    upgrade();
  }
  
  //Gameover if initialized
 if (location ==  "Gameover")
  {
    GAMEOVER();
  }
  
  //Winner if initialized
 if (location == "Winner")
  {
    Pass_level();
  }
  
  //Level 1 if clicked
 if (location == "Level 1")
  {
    //difficulty and win conditions
    int LowestSpeed = 3;
    int HighestSpeed = 9;
    int WinIf = 20;
    
    //Resets default locations and starts level
   levelinitialize(location);
   Platform(location); 
   
   //Parameters for level 1 and it's difficulty from left to right (x,y) (ratex) (ratey) (The lower the easier the game) (the higher the harder the game) (Win if # bounces)
   BounceScreen (one, B, G, LowestSpeed, HighestSpeed, WinIf);
   MoveEllipse ();

  }
 
 if (location == "Level 2")
  {
    //difficulty and win conditions
    int LowestSpeed = 5;
    int HighestSpeed = 11;
    int WinIf = -1;
    
    //Resets default locations and starts level
   levelinitialize(location);
   Platform(location);
   
   //Increased difficulty
   BounceScreen (one, B, G, LowestSpeed, HighestSpeed, WinIf);
   MoveEllipse ();
  }
  
 if (location == "Level 3")
  {
    //difficulty and win conditions
    int LowestSpeed = 5;
    int HighestSpeed = 11;
    int WinIf = 20;
    
    //Resets default locations and starts level
   levelinitialize(location);
   Platform(location);
   
   //Same difficulty as level 2 HOWEVER bricks added
   BounceScreen (one, B, G, LowestSpeed, HighestSpeed, WinIf);
   MoveEllipse ();
   
   //Turn off bricks if ball falls past platform
   if (one.y <= 700)
   {
     //Same parameters as BounceScreen
    bricks (one, B, G, LowestSpeed, HighestSpeed);
   }
  }
  
 if (location == "Level 4")
  {
    
    //difficulty and win conditions
   int LowestSpeed = 3;
   int HighestSpeed = 9;
   int WinIf = -1;
    
    //Resets default locations and starts level
   levelinitialize(location);
   Platform(location);
   
    //Same difficulty as level 3 and 4 HOWEVER two balls
   BounceScreen (one, B, G, LowestSpeed, HighestSpeed, WinIf);
   BounceScreen (two, J, K, LowestSpeed, HighestSpeed, WinIf);
   MoveEllipse2 ();
  }
 
 if (location == "Level 5")
  {
    //difficulty and win conditions
   int LowestSpeed = 3;
   int HighestSpeed = 9;
   int WinIf = 50;
   
    //Resets default locations and starts level
   levelinitialize(location);
   Platform(location);
   
   //Allows the ball to bounce around
   BounceScreen (one, B, G, LowestSpeed, HighestSpeed, WinIf);
   BounceScreen (two, J, K, LowestSpeed, HighestSpeed, WinIf);
   MoveEllipse2 ();
   
   //turn off bricks if either ball falls off the screen
   if ((one.y <= 700)||(two.y <=700))
   {
     //Call function twice for both balls
    bricks (one, B, G, LowestSpeed, HighestSpeed);
    bricks (two, J, K, LowestSpeed, HighestSpeed);
   }
  }
 
 if (location == "Level 6")
  {
    //VERY difficult level... Speed of level 2, bricks of level 3 and additional ball
   int LowestSpeed = 5;
   int HighestSpeed = 11;
   int WinIf = 50;
   
    //Resets default locations and starts level
   levelinitialize(location);
   Platform(location);

   //Allows the ball to bounce around
   BounceScreen (one, B, G, LowestSpeed, HighestSpeed, WinIf);
   BounceScreen (two, J, K, LowestSpeed, HighestSpeed, WinIf);
   MoveEllipse2 ();
   
   if ((one.y <= 700)||(two.y <=700))
   {
     //Call function twice for both balls
    bricks (one, B, G, LowestSpeed, HighestSpeed);
    bricks (two, J, K, LowestSpeed, HighestSpeed);
   }
  }
  
}