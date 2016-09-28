//Button Functions*************************** 

int button;                          //Every button has a unique identity which is alloted by this variable
color dark_blue = color(25,25,112);  //This color is used as the button color for the game

//********************************************


//Color**************************

color white = color(255);          //Standard platform and ball color
color orange = color(255,69,0);    //an upgradable ball and platform color
color blue = color(0,191,255);     //an upgradable ball and plarform color

// The following colors are the gradient used for the bricks in levels 3, 5, and 6.
color darkgreen = color(0,100,0);
color forestgreen = color(34,139,34);
color limegreen = color(50,205,50);
color lawngreen = color(124,252,0);

//This array is made use of in the bricks tab
color [] brick_color = {white, lawngreen, limegreen, forestgreen, darkgreen};

//*******************************


//Uploads*************************
//These are all the variables required for the sound and image file uploads that play
//and are shown throughout the game
PImage start;                           
PImage levelselector;

import ddf.minim.*;
Minim Start;                           // Sound file used throughout the game                          // 
Minim Click;                           //Sound file uses for the clicking button sound
AudioPlayer player1, player3;

//********************


//Navigation********************

String location = "START";   //This variable is chaged in order to change locations in the game.
                             //For example it is changes from START to LevelSelect when we want go to 
                             //the level select menu

//*************************


//Ball***************************
//Code associated with the bouncing of the ball in all 6 levels
class  Bounce
{
  int j = 1;
  int k;
}

int [][] Arr1 = {{1,2,3,2,1},{2,3,4,3,2},{1,2,3,2,1}};

int check = 0;

class Coord
{
float x =500;
float y =625;
}

Coord one = new Coord ();
Coord two = new Coord ();

Bounce B = new Bounce ();
Bounce G = new Bounce ();

Bounce J = new Bounce ();
Bounce K = new Bounce ();

//*******************************


//Platform***********************
//Code associated with the platform and its workings
int plat_size_x = 150;          //platform size, can be upgraded by the user
int plat_size_y = 10;           //platform size
int x_pos = 450;                // x_coordiante of platform
int y_pos = 650;                // y_coordinate of platform
int plat_speed = 10;            // The speed the user can move the platform, can be upgraded by user
color plat_color = white;       // The color of the platform and ball in game, can be changed by user


//*******************************


//*******************************

//Scoring & XP ************************

int Score = 0;                    //The score given the user round, resets every round
int High_Score = 0;               //The highest score a user has achieved. Updated only a higher score is achived
int XP = 10000;                       //The users score is added to this value every round, can be used
                                  //to purchase upgrades, which will in turn decrease your XP
                                       
//*******************************