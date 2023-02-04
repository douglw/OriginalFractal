public void setup(){
  size(500, 500);
  rectMode(CENTER);
}
public void draw(){
  background(0);
  noFill();
  stroke(255);
  strokeWeight(3);
  myFractal(width/2, height/2, 100); 
}
public void myFractal(int x, int y, int siz){
  // //
  rect(x, y, siz, siz, 36, 36, 36, 36);
  if(siz > 10){
  }
  else{
    myFractal(x - siz/2, y, siz/2);
    myFractal(x + siz/2, y, siz/2);
  }
}
