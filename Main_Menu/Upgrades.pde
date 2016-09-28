//upgrade is responsible for calling the create_button function for the buttons
//on the upgrade screen and the text associated with these buttons
void upgrade()
{
  image(start,0,0, width, height);
  button_creator(255, 185, 390, 100, dark_blue, 10, 14);
  button_creator(255, 335, 390, 100, dark_blue, 10, 15);
  button_creator(255, 485, 390, 100, dark_blue, 10, 16);
  fill(255);
  textSize(80);
  text("Upgrades", 450, 130);
  textSize(40);
  text("Platform Speed", 450, 235);
  text("Platform/Ball Color", 450, 380);
  text("Platfom Size", 450, 535);
  textSize(30);
  text("300 XP", 450, 270);
  text("100 XP", 450, 415);
  text("500 XP", 450, 570);
  backButton_text();
}