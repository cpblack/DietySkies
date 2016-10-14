class player.pde{
  String currentScreen = "mainmenu"
  
  
  //==================
  button settingsButton = new button()
  button playButton = new button()
  //==================
  
  void display(){
    if (currentScreen == "mainmenu") {
      mainmenu();
    } else if (currentScreen == "level1") {
      level1();
    } else if (currentScreen == "level2") {
    
    }
  }
  void mainmenu(){
    
  }

}
