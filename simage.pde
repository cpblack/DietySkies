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
    if (clickEvent == true && clickPos[0]>= x && clickPos[1] >= y && clickPos[0] <= x + xSize && clickPos[1] <= y + ySize) {
      output = true;
    }
    return output;
  }
  boolean isHovered() {
    boolean output = false;
    if (clickPos[0] >= x && clickPos[1] >= y && clickPos[0] <= x + xSize && clickPos[1] <= y + ySize) {
      output = true;
    }
    return output;
  }
  boolean isDragged() {
    boolean output = false;
    if (dragEvent == true && dragPos[0]>= x && dragPos[1] >= y && dragPos[0] <= x + xSize && dragPos[1] <= y + ySize) {
      output = true;
    }
    return output;
  }
} 
