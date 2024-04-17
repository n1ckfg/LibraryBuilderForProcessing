import LibraryBuilderForProcessing.*;

LibraryBuilderForProcessing libes;

void setup() {
  size(640, 480);
  libes = new LibraryBuilderForProcessing(this);
}

void draw() {
  background(0);
  
  surface.setTitle(""+frameRate);
}
