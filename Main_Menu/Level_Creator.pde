//reflects ellipse x or y
void Wall_Bounce (int LowestSpeed, int HighestSpeed, Bounce R)
{
  //If ball hits a wall change direction
  R.j = R.j*(-1);
  //If ball hits a wall also change its speed factor
  R.k = (int) random(LowestSpeed, HighestSpeed);
}

//Moves the ellipse around the screen
void MoveEllipse()
{
  //Ellipse 1 - Works fine **********
  ellipse( one.x = Move_Ellipse_Dir(one.x, B), one.y = Move_Ellipse_Dir(one.y, G), 50, 50);
  //*********************************
}

//Debugging function, forces the ellipse to always move very slightly
float Move_Slightly_Always (float increment)
{
  increment++;
  return increment;
}

//Defines ellipse motion
void MoveEllipse2 ()
{
  //Ellipse 1 - Works fine **********
  ellipse( one.x = Move_Ellipse_Dir(one.x, B), one.y = Move_Ellipse_Dir(one.y, G), 50, 50);
  //*********************************B
  
  //Ellipse 2 - In progress *********
  ellipse( two.x = Move_Ellipse_Dir(two.x, J), two.y = Move_Ellipse_Dir(two.y, K), 50, 50);
  //*********************************
}

//Always move the ball (Prevents bugging) and call rates when ball bounces
float Move_Ellipse_Dir (float posi, Bounce rate)
{
  posi = Move_Slightly_Always(posi) + rate.j*rate.k;
  return posi;
}

//Bounces the ball off the screen edges and platform, also closes the level if the the users wins or loses
void BounceScreen(Coord Co, Bounce B, Bounce G, int LowestSpeed, int HighestSpeed, int score)
{
  //Bounce off the right wall
  if(( Co.x <= 900 )&&( Co.x >= 880 ))
  {
    if(B.j == 1)
    {
      Wall_Bounce(LowestSpeed, HighestSpeed, B);
    }
  }
  
  //Bounce off the left wall
  if(( Co.x >= 0 )&&( Co.x <= 20))
  {
    if(B.j == -1)
    {
      Wall_Bounce(LowestSpeed, HighestSpeed, B);
    }
  }
  
  //Bounce off the top wall
  if(( Co.y >= 0 )&&( Co.y <= 20))
  {
    if(G.j == -1)
    {
      Wall_Bounce(LowestSpeed, HighestSpeed, G);
    }
  }
  
  //Platform Bounce Code  
  if (Co.x > x_pos && Co.x < x_pos + plat_size_x && Co.y >= y_pos - 25 && Co.y <= y_pos - 1)
  {
    if(G.j == 1)
    {
      Wall_Bounce(LowestSpeed, HighestSpeed, G);
      Score += 1;
    }
  }
  
  //Ends the level if the ball falls off the screen
  if (Co.y >= 750)
  {
    location = "Gameover";
  }
  
  if (check == 33)
  {
    location = "Winner";
  }
}

//Brick function draws a 2D array of bricks and assigns a color based on array index. Once a brick is "hit" lighten the color of the brick.

void bricks (Coord Co, Bounce B, Bounce G, int LowestSpeed, int HighestSpeed)
{
  
  //Basic for loop that calls each index of 2D array
  for( int i = 0; i < Arr1.length; i++)
  {
    for( int j = 0; j < Arr1[i].length; j++)
    {
      
      /*Check every index of array if 0 = white if 1 = lawn green if 2 = lime green if 3 = forest green
      If ball hits boundary of brick subtract 1 from the array number add 1 point. Call "Wall_Bounce" and change speeds*/
      for( int m = 0; m <= 3; m++)
      
       if( Arr1[i][j] == m+1)
       {
         //Fill color based on array index of brick_color and a rectangle based on array index of Arr1
         fill(brick_color[m]);
         rect((j+1)*130,(i+1)*80, 120, 40);
         
         //Right side boundary of brick
         if((Co.x > 120 + (j+1)*130)&&(Co.x < 120 + (j+1)*130 + 20)&&(Co.y > (i+1)*80- 20 && Co.y < (i+1)*80 + 40))
         {
           if(B.j == -1)
           {           
             Wall_Bounce(LowestSpeed, HighestSpeed, B);
             Arr1 [i][j] = Arr1[i][j] - 1;
             Score +=1;
             check += 1;
           }
         }
        
         //Left side boundary of brick
         if((Co.x < (j+1)*130) && (Co.x > (j+1)*130 - 20) && Co.y > (i+1)*80 - 20 && Co.y < (i+1)*80 + 40)
         {
           if(B.j == 1)
           {
             Wall_Bounce(LowestSpeed, HighestSpeed, B);
             Arr1 [i][j] = Arr1[i][j] - 1;
             Score +=1;
             check += 1;
           }
         }
        
         //Bottom side boundary of brick
         if((Co.y < (i+1)*80)&&(Co.y > (i+1)*80 - 20)&&(Co.x > (j+1)*130 - 20)&&(Co.x < (j+1)*130 + 140))
         {
           if(G.j == 1)
           {
             Wall_Bounce(LowestSpeed, HighestSpeed, G);
             Arr1 [i][j] = Arr1[i][j] - 1;
             Score +=1;
             check += 1;
           }
         }
        
         //Top side boundary of brick
         if ((Co.y > 40 + (i+1)*80) && (Co.y < 40 + (i+1)*80 + 20)&&(Co.x > (j+1)*130 - 20)&&(Co.x < (j+1)*130 + 140))
         {
           if(G.j == -1)
           {
             Wall_Bounce(LowestSpeed, HighestSpeed, G);
             Arr1 [i][j] = Arr1[i][j] - 1;
             Score +=1;
             check += 1;
           }
         }
         
       }
       
    }
  }
}