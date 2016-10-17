class simage { 
  float x;
  float y;
  float xSize;
  float ySize;
  PImage myImage;
  simage(float xpos, float ypos, float xSizeIn, float ySizeIn, PImage imageIn) {
    x = xpos;
    y = ypos;
    xSize = xSizeIn;
    ySize = ySizeIn;
    myImage = imageIn;
  }
  void doDraw() {
    image(myImage, x, y, xSize, ySize);
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
