int oddballSize = 20;
int numStars = 100;
ArrayList<Particle> stars = new ArrayList<Particle> ();
Oddball ships;

void setup() {
  size(1000,1000);
  background(0);
  for(int i = 0; i < numStars; i++) {
    stars.add(new Particle());
  }
  stars.add(new Oddball());
  stars.add(new Oddball());
  stars.add(new Oddball());
}

void draw() {
  background(0);
  for(int i = 0; i < stars.size(); i++) {
     stars.get(i).move();
     stars.get(i).show();
  }
}
