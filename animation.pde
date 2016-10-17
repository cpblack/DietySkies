class animation{
  PImage[] images;
  float frameRate;
  float firstFrame;
  float x;
  float y;
  float xSize;
  float ySize;
  animation(PImage[] imagesIn,float frameRateIn,xIn,yIn,xSizeIn,ySizeIn){
    images = imagesIn
    frameRate = frameRateIn
    
  }
  void display(){
    if (firstFrame == null) {
      firstFrame = frameCount
    }
    image(images[floor(firstFrame / frameRate) % images.length],x,y,xSize,ySize)
  }
}
