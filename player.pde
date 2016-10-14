class player.pde{
  String currentScreen = "mainmenu"
  
  //==================
  button settingsButton = new button()
  button playButton = new button()
  level currentLevel = new level()
  //==================
  
  void display(){
    if (currentLevel.quit == true){
      currentScreen = "mainmenu";
      currentLeve.quit = false;
    }
    if (currentScreen == "mainmenu") {
      mainmenu();
    } else if (currentScreen == "level") {
      currentLevel.tick();
      currentLevel.display();
    }
  }
  void mainmenu(){
    
  }

}
