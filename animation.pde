class animation {
  PImage[] myimages;
  float framePlayRate = -1;
  float firstFrame;
  float x;
  float y;
  float xSize;
  float ySize;
  animation(PImage[] imagesIn, float frameRateIn, float xIn, float yIn, float xSizeIn, float ySizeIn) {
    myimages = imagesIn;
    framePlayRate = frameRateIn;
    x = xIn;
    y = yIn;
    xSize = xSizeIn;
    ySize = ySizeIn;
  }
  void setPosition(float xIn, float yIn) {
    x = xIn;
    y = yIn;
  }

  void doDraw() {
    if (firstFrame == -1) {
      firstFrame = frameCount;
    }
    image(myimages[floor((frameCount - firstFrame) / framePlayRate) % myimages.length], x, y, xSize, ySize);
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
