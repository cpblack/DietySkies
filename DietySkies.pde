int beginNextTick;
int rate = 20;
float[] clickPos = new float[]{-100, -100};
float[] dragPos = new float[]{-100, -100};
boolean[] keys = {false, false, false, false};
String menuState = "main";
simage settingsButton;
simage playButton;
PImage[] images;
boolean clickEvent = false;
boolean dragEvent = false;
animation characterAnimation;
simage menuBackground;
void initializeImages() {
  String[] imageIndex = {"urban circles.jpg", "aquabutton.png", "settings button.png", "play button.png", "megaman1.png", "megaman2.png", "megaman3.png", "megaman4.png"};
  images = new PImage[imageIndex.length];
  int t = 0;
  while (t < images.length && imageIndex[t] != "") {
    images[t] = loadImage(imageIndex[t]);
    t = t + 1;
  }
}
void initializeVariableValues() {
  int borderSize = 70;
  playButton = new simage(width / borderSize, height / borderSize, width / 2 - width / borderSize * 2, height / 2 - height / borderSize * 2, images[3]);
  settingsButton = new simage(width / 2 + width / borderSize, height / 2 + height / borderSize, width / 2 - width / borderSize * 2, height / 2 - height / borderSize * 2, images[2]);
  menuBackground = new simage( float(0), 0.0, float(width), float(height), images[0]);
  PImage[] megamanimation = new PImage[4];
  int t = 0;
  while (t < megamanimation.length) {
    megamanimation[t] = images[t + 4];
    t = t + 1;
  }
  characterAnimation = new animation(megamanimation, 3, 0, 0, 100, 100);
}
void setup() {
  size(800, 800);
  initializeImages();
  initializeVariableValues();
}
void characterPhysics() {
  if (keys[0]) {
    characterAnimation.y = characterAnimation.y + 10;
  }
  if (keys[1]) {
    characterAnimation.x = characterAnimation.x + 10;
  }
  if (keys[2]) {
    characterAnimation.y = characterAnimation.y - 10;
  }
  if (keys[3]) {
    characterAnimation.x = characterAnimation.x - 10;
  }
  if (characterAnimation.x < 0) {
    characterAnimation.x = 0;
  }
  if (characterAnimation.y < 0) {
    characterAnimation.y = 0;
  }
  if (characterAnimation.x + characterAnimation.xSize > width) {
    characterAnimation.x = width - characterAnimation.xSize;
  }
  if (characterAnimation.y + characterAnimation.ySize > width) {
    characterAnimation.y = width - characterAnimation.ySize;
  }
}
void mainMenu() {

  rect(0, 0, width, height);
  characterPhysics();
  if (menuState == "main") {
    menuBackground.doDraw();
    settingsButton.doDraw();
    playButton.doDraw();
    characterAnimation.doDraw();
    if ((settingsButton.isClicked()) ||  (settingsButton.isDragged())) {
      println("Button Clicked: settings");
    }
    if ((playButton.isClicked()) ||  (playButton.isDragged())) {
      println("Button Clicked: play");
    }
    if ((characterAnimation.isClicked() ||  (characterAnimation.isDragged()))) {
      println("Animation Clicked: characterAnimation");
    }
  }
}

void mouseClicked() {
  clickEvent = true;
  clickPos = new float[]{mouseX, mouseY};
}
void mouseDragged() {
  dragEvent = true;
  dragPos = new float[]{mouseX, mouseY};
}
void keyPressed() {
  if (keyCode == 40) {
    keys[0] = true;
  }
  if (keyCode == 39) {
    keys[1] = true;
  }
  if (keyCode == 38) {
    keys[2] = true;
  }
  if (keyCode == 37) {
    keys[3] = true;
  }
}
void keyReleased() {
  if (keyCode == 40) {
    keys[0] = false;
  }
  if (keyCode == 39) {
    keys[1] = false;
  }
  if (keyCode == 38) {
    keys[2] = false;
  }
  if (keyCode == 37) {
    keys[3] = false;
  }
}



void draw() {
  int currentMillis = millis();
  beginNextTick = currentMillis + rate;
  mainMenu();
  clickEvent = false;
  dragEvent = false;
  delay(min(0, beginNextTick - currentMillis));
  //while (beginNextTick < millis()) {
  //}
}



