int beginNextTick;
int rate = 60;
String menuState = "main";
button settingsButton;
button playButton;
PImage[] images;
boolean clickEvent = false;
boolean dragEvent = false;
simage menuBackground;
void initializeImages() {
  String[] imageIndex = {"urban circles.jpg", "aquabutton.png","settings button.png","play button.png"};
  images = new PImage[imageIndex.length];
  int t = 0;
  while (t < images.length && imageIndex[t] != "") {
    images[t] = loadImage(imageIndex[t]);
    t = t + 1;
  }
}
void initializeVariableValues(){
  int borderSize = 70;
  playButton = new button(width / borderSize,height / borderSize,width / 2 - width / borderSize * 2, height / 2 - height / borderSize * 2, images[3]);
  settingsButton = new button(width / 2 + width / borderSize,height / 2 + height / borderSize,width / 2 - width / borderSize * 2, height / 2 - height / borderSize * 2, images[2]);
  menuBackground = new simage(images[0], float(0), 0.0, float(width), float(height));
}
void setup() {
  size(800, 800);
  initializeImages();
  initializeVariableValues();
}

void mainMenu() {

  rect(0, 0, width, height);
  if (menuState == "main") {
    menuBackground.doDraw();
    settingsButton.doDraw();
    playButton.doDraw();
    if (settingsButton.isClicked()) {
      print("settings ");
    }
    if (playButton.isClicked()) {
      print("play ");
    }
  }
}

void mouseClicked() {
  clickEvent = true;
}
void mouseDragged() {
dragEvent = true;
}
void draw() {
  int currentMillis = millis();
  beginNextTick = currentMillis + rate;
  mainMenu();
  
  clickEvent = false;
  dragEvent = false;
  delay(min(0,beginNextTick - currentMillis));
  //while (beginNextTick < millis()) {
  //}
}
