class player.pde{
  String currentScreen = "mainmenu"
  
  //==================
  button settingsButton = new button()
  button playButton = new button()
  level currentLevel = new level()
  //==================
  
  void display(){
    if (currentScreen == "mainmenu") {
      mainmenu();
    } else if (currentScreen == "level") {
      currentLevel.display();
      
    }
  }
  void mainmenu(){
    
  }

}
