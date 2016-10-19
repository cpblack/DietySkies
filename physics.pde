class physics {
  float accelerationTickAdjust = 1;
  float speedTickAdjust = 1;
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
  float drag;
  physics(float xIn, float yIn, float xSpeedIn,float ySpeedIn, float xAccelerationIn,float yAccelerationIn, float xMinIn, float yMinIn, float xMaxIn, float yMaxIn,float dragIn){
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
    drag = dragIn;
  }
  void keyFactor(){
    if ((keys[0]) && (keys[2] == false)) {
      if (ySpeed < 0) {
        ySpeed = 0;
      }
      ySpeed = ySpeed + (yAcceleration * accelerationTickAdjust);
    }
    if ((keys[2]) && (keys[0] == false)) {
      if (ySpeed > 0) {
        ySpeed = 0;
      }
      ySpeed = ySpeed - (yAcceleration * accelerationTickAdjust);
    }
    if ((keys[1]) && (keys[3] == false)) {
      if (xSpeed < 0) {
        xSpeed = 0;
      }
      xSpeed = xSpeed + (xAcceleration * accelerationTickAdjust);
    }
    if ((keys[3]) && (keys[1] == false)) {
      if (xSpeed > 0) {
        xSpeed = 0;
      }
      xSpeed = xSpeed - (xAcceleration * accelerationTickAdjust);
    }
  }
  void tick(){
    if (xSpeed > 0) {
      if (xSpeed > drag) {
        xSpeed = xSpeed - drag;
      } else if (drag > 0){
        xSpeed = 0;
      }
    if (xSpeed < 0) {
      if (abs(xSpeed) > drag) {
        xSpeed = xSpeed + drag;
      } else if (drag > 0){
        xSpeed = 0;
      }
    
    }
    
    if (ySpeed > 0) {
      if (ySpeed > drag) {
        ySpeed = ySpeed - drag;
      } else if (drag > 0){
        ySpeed = 0;
      }
    if (ySpeed < 0) {
      if (abs(ySpeed) > drag) {
        ySpeed = ySpeed + drag;
      } else if (drag > 0){
        ySpeed = 0;
      }
    
    }
    x = x + xSpeed * speedTickAdjust;
    y = y + ySpeed * speedTickAdjust;
  }
}
