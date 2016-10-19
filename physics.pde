class physics {
  tickAdjust = 1;
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float xAcceleration;
  float yAcceleration;
  float xMin;
  float yMin;
  float xMax;
  float yMax;
  physics(float xIn, float yIn, float xSpeedIn,float ySpeedIn, float xAccelerationIn,float yAcellerationIn, float xMinIn, float xMinIn, float xMaxIn, float yMaxIn){
    x = xIn;
    y = yIn;
    xSpeed = xSpeedIn;
    ySpeed = ySpeedIn;
    xAcceleration = xAccelerationIn;
    yAcceleration = yAccelerationIn;
    xMin = xMinIn;
    yMin = yMinIn;
    xMax = xMaxIn;
    yMax = yMaxIn;
  }
  void keyFactor(){
    if ((keys[0]) && (keys[2] == false)) {
      if (ySpeed < 0) {
        ySpeed = 0;
      }
      ySpeed = ySpeed + yAcceleration;
    }
    if ((keys[2]) && (keys[0] == false)) {
      if (ySpeed > 0) {
        ySpeed = 0;
      }
      ySpeed = ySpeed - yAcceleration;
    }
    if ((keys[1]) && (keys[3] == false)) {
      if (xSpeed < 0) {
        xSpeed = 0;
      }
      xSpeed = xSpeed + xAcceleration;
    }
    if ((keys[3]) && (keys[1] == false)) {
      if (xSpeed > 0) {
        xSpeed = 0;
      }
      xSpeed = xSpeed - xAcceleration;
    }
  }
}
