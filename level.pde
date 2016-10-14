class level {
  boolean quit = false;
  String selectedLevel;
  String[] levelOptions;
  String[][] backgroundMaterial;
  void loadLevel(String targetLevel) {
    String[] file = split(join(loadStrings("levels/"+targetLevel+".txt")),"######");
    
  }
  void display(){
  
  }
}
