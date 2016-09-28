//The code responsible for the creation of the main menu
void MainMenu()
{
    player1.play();  
    image(start,0,0);
    
    button_creator(275,200,350,150,dark_blue,10,1);
    button_creator(275,375,350,150,dark_blue,10,2);
    button_creator(810,610,75,75,dark_blue,14,3);
    mainMenu_text();
    XP_HighScore();
}