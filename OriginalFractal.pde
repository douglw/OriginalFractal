public void setup(){ //
  size(1200, 500);
}
public void draw(){
  background(0,0,0,0);
  myFractal(0, 0, mouseX, mouseY); 
}
public void winErr(float x, float y, float sizX, float sizY){
  beginShape();
  noStroke();
  fill(#262AD3);
  rect(x,y,200,100,10,10,0,0); //blue
  fill(#D2D3DE);
  rect(x+5,y+15,190,80); //gray
  fill(#FF2424);
  stroke(255);
  rect(x+187,y+3,8,8,3); //close icon
  stroke(0);
  ellipse(x+30,y+40,30,30); //circle
  fill(#D2D3DE);
  rect(x+30,y+60,75,25); //button
  line(x+80,y+30,x+150,y+30);
  line(x+80,y+50,x+150,y+50);
  endShape(CLOSE);
}
public void myFractal(int x, int y, int siz, int siza){
  winErr(x, y, siz, siz);
  if (siz <= 10) {
  } else {
    myFractal(x, y, siz / 2, siza/4);
    myFractal(x + (siz) + 100, y, siz / 2, siza / 4);
    myFractal(x + (siz/2) + 100, y + (siz/2),siz / 2, siza/4);
  }
}



//Error popup thing
/*noStroke();
  fill(#262AD3);
  rect(0,0,200,100,10,10,0,0); //blue
  fill(#D2D3DE);
  rect(5,15,190,80); //gray
  fill(#FF2424);
  stroke(255);
  rect(187,3,8,8,3); //close icon
  stroke(0);
  ellipse(30,40,30,30); //circle
  fill(#D2D3DE);
  rect(30,60,75,25); //button
  line(80,30,150,30);
  line(80,50,150,50);*/
