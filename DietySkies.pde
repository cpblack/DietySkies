int ticksPerSecond = 60;
String mainMenuState = "main";

PImage[] images;
boolean clickEvent = false;

void setup() {
  String[] imageIndex = {"urban circles.jpg"};
  images = new PImage[imageIndex.length];
  int t = 0;
  while (t < images.length && imageIndex[t] != "") {
    images[t] = loadImage(imageIndex[t]);
    t = t + 1;
  }
}

void mainMenu() {
  if (mainMenuState == "main") {
    image(images[0], 0, 0, width, height);
  }
}


void main() {
  rect(0, 0, width, height);
  if (mainMenuState == "main") {
    mainMenu();
  }

  // End
  clickEvent = false;
  delay(1000/ticksPerSecond);
}
void mouseClicked() {
  clickEvent = true;
}
