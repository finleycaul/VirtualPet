import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup(){
size(500,500);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
}
void draw() {
  background(194, 240, 240);
int rButton = arduino.analogRead(1);
int x;
if(rButton>500)
  x=0;
else
  x=255;  
fill(x, 120, 0);
triangle(294,250,360,190,360,320);

fill(x, 166, 77);
triangle(130,250,326,140,326,370);

fill(x, 204, 51);
arc(130,250,200,200,-PI/6,PI/5.6);

fill(255,255,255);
ellipse(185,235,30,30);
fill(0,0,0);
ellipse(185,235,15,15);

fill(x, 140, 26);
triangle(250,250,290,210,290,295);

int y = arduino.analogRead(5);
if (y>100)
  y=100;
System.out.println(y);
fill(128, 229, 255);
ellipse(130,2*y,20,20);
fill(128, 229, 255);
ellipse(70,2.3*y,20,20);
fill(128, 229, 255);
ellipse(105,1.8*y,20,20);
fill(255, 255, 255);
ellipse(133,2*y,5,5);
fill(255, 255, 255);
ellipse(72,2.3*y,5,5);
fill(255, 255, 255);
ellipse(103,1.8*y,5,5);
}
