class animation{
  PImage[] images;
  float frameRate;
  float firstFrame;
  float x;
  float y;
  float xSize;
  float ySize;
  void setPosition(float xIn, float yIn){
    x = xIn;
    y = yIn;
  }
  animation(PImage[] imagesIn,float frameRateIn,xIn,yIn,xSizeIn,ySizeIn){
    images = imagesIn
    frameRate = frameRateIn
    x = xIn;
    y = yIn;
    xSize = xSizeIn;
    ySize = ySizeIn;
  }
  void display(){
    if (firstFrame == null) {
      firstFrame = frameCount
    }
    image(images[floor(firstFrame / frameRate) % images.length],x,y,xSize,ySize)
  }
}
