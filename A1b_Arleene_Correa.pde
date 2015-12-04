import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;





Ball[] myBalls = new Ball[10];
int x=0;

AudioSnippet Bird;
AudioSnippet beep;
AudioSnippet growl;
AudioSnippet robo;
AudioSnippet wasp;


Minim minim;

void setup(){
  size(1000,1000);
 
  minim = new Minim(this);
  Bird = minim.loadSnippet("Bird.wav");
  beep = minim.loadSnippet("beep.wav");
  growl = minim.loadSnippet("growl-5.wav");
  robo = minim.loadSnippet("robo5.mp3");
  wasp = minim.loadSnippet("wasp.wav");


 
  for (int i=0; i<myBalls.length; i++){
    x+=20;
  myBalls[i] = new Ball(#53B8E5-i*10,x*4.5,0,random(1,9),random(.1,.5));
}
}
void draw(){
  background(#A4D4D6);
  
 
 
  
  for(int i=0; i<myBalls.length; i++){
  myBalls[i].display();
  myBalls[i].move();
  
 
 if(myBalls[0].ypos>=height){
     Bird.play();}
  if(myBalls[1].ypos>=height){
    beep.play();}
  if(myBalls[2].ypos>=height){
    growl.play();}
  if(myBalls[3].ypos>=height){
    robo.play();}
  if(myBalls[4].ypos>=height){
    wasp.play();}
 
  

  
}
}