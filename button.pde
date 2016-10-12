class button { 
  float x;
  float y;
  float xSize;
  float ySize;
  PImage myImage;
  button(float xpos, float ypos, float xSizeIn, float ySizeIn, PImage imageIn) {
    x = xpos;
    y = ypos;
    xSize = xSizeIn;
    ySize = ySizeIn;
    if (imageIn != null) {
      myImage = imageIn;
    }
  }
  void doDraw() {
    if (myImage != null) {
      image(myImage, x, y, xSize, ySize);
    } else {
      print("Tried drawing button, image was null.");
    }
  }
  boolean isClicked() {
    boolean output = false;
    if (clickEvent == true && mouseX >= x && mouseY >= y && mouseX <= x + xSize && mouseY <= y + ySize) {
      output = true;
    }
    return output;
  }
  boolean isHovered() {
    boolean output = false;
    if (mouseX >= x && mouseY >= y && mouseX <= x + xSize && mouseY <= y + ySize) {
      output = true;
    }
    return output;
  }
} 
