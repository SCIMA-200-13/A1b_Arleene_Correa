class Ball{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float gravity;
  
Ball(color tempC, float tempXpos, float tempYpos, float tempXspeed, float tempGrav){
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    gravity = tempGrav;
    println(ypos,"Y");
    println(xpos,"X");
   
  }
  
  void display(){
  fill(c);
  stroke(0);
 // ellipse(CENTER); 
  ellipse(xpos, ypos, 10,10);
  }
  
  void move(){
    ypos=ypos+xspeed;
  xspeed=xspeed +gravity;
  
     if (ypos>height){
       xspeed=xspeed*-0.98;
     }}}