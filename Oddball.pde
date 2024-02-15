class Oddball extends Particle {
  Oddball() {
    myX = 0;
    myY = Math.random()*1000;
    a = 255;
  }

  void move() {
    myX += (Math.random()*2);
    myY += (Math.random()*2)-1;
  }
  
  void show() {
    fill(255);
    ellipse((float)myX, (float)myY, oddballSize, oddballSize);
  }
}
