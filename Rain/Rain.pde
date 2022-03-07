
RainDrop[] d = new RainDrop[1000];

void setup(){
  size(1920, 1080);
  for(int i = 0; i < d.length; i++){
    d[i] = new RainDrop();
  }
}

void draw(){
 background(200, 200, 255);
   for(int i = 0; i < d.length; i++){
    d[i].fall();;
    d[i].show();
  }
}
