class animation{
  PImage[] images;
  float frameRate;
  float firstFrame;
  animation(PImage[] imagesIn,float frameRateIn){
    images = imagesIn
    frameRate = frameRateIn
  }
  void display(){
    if (firstFrame == null) {
      firstFrame = frameCount
    }
  }
}
