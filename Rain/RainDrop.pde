class RainDrop{
  
  float x = random(width),
        y = random(-2000, 0),
        z = random(0, 30);
        
  float gravity = map(z, 0, 20, 0, 0.2),
        fallSpeed = map(z, 0, 20, 10, 20),
        dropLen =  map(z, 0, 20, 10, 20);
  
 void fall(){
   y = y + fallSpeed;
   fallSpeed = fallSpeed + gravity;
   
   if(y > height){
    y =  random(-2000, 0);
    gravity = map(z, 0, 20, 0, 0.2);
    fallSpeed = map(z, 0, 20, 10, 20);
   }
 }
 
 void show(){
     float thickness = map(z, 0, 20, 3, 8);
     strokeWeight(thickness);
     stroke(100, 13, 250);
     line(x, y, x, y + dropLen);
 }
  
}
