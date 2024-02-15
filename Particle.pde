class Particle {
  double myX, myY, myAngle, mySpeed;
  float r, g, b, a;
  Particle() {
    myX = width/2;
    myY = height/2;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5;
    r = (float)(Math.random()*256);
    g = (float)(Math.random()*256);
    b = (float)(Math.random()*256);
  }

  void move() {
    myX += mySpeed*(Math.cos(myAngle));
    myY += mySpeed*(Math.sin(myAngle));
    a = map(dist((float)myX, (float)myY, width/2, height/2), 0, dist(width, height, width/2, height/2) , 100, 255);
  }

  void show() {
    fill(r, g, b, a);
    ellipse((float)myX, (float)myY, 10, 10);
  }
}
