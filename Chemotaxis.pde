class Walker{ 
 int myX, myY, score, score2;
 
 Walker(){ 
  myX = 900; 
  myY = 500;
 }
 
 void MOVEmouse() {
  if ( mouseX < myX) 
    myX = myX + (int)(Math.random()*15)-15;
  else
    myX = myX + (int)(Math.random()*15)-2;
//done x
  if ( mouseY < myY)
    myY = myY + (int)(Math.random()*7)-5;
  else
    myY = myY + (int)(Math.random()*7)-1;
//done y
  if ( myX < 50) {
    fill(178,58,50);
    noStroke();
    rect(250,50,55,55);
    score += 1;
    fill(223, 255, 79);
    text(score, 250, 100);
 }
// done text 1 
  if ( myX > 950) {
    fill(178,58,50);
    noStroke();
    rect(850,50,55,55);
    score2 += 1;
    fill(223,255,79);
    text(score2, 850, 100);
  }
} // end void
 
 void show(){
   ellipse(myX, myY, 30, 30);
 } // end object def
 
}
Walker fred;
Walker [] home;
void setup(){
size(1000,1000);
fred = new Walker();
home = new Walker[0];
for(int i = 0; i < home.length; i++){
  home[i] = new Walker();
}

} 
//draw it
void draw(){
  background(178,58,50);
  stroke(0);
  fill(255,255,255);
  text("SCORE", 200, 100);
  text("SCORE", 800, 100);
  
  fill(46,107,79);
  rect(0, 200, 1000, 600);
  fill(255,255,255);
  noStroke();
  rect(0,200,1000,10); // side top
  rect(0,800,1000,10); // bottom
  rect(0,200,5,600);//sides dwon
  rect(995,200,5,600);//sides dwon
  rect(0,250,1000,10);
  rect(0,750,1000,10);
  rect(75,250,10,500);
  rect(920,250,10,500);
  rect(75,500,855,10);
  stroke(0);
  rect(500,200,10,610);// mid line
  fill(223, 255, 79);
for (int i = 0; i < home.length; i++){
    home[i].MOVEmouse();
    home[i].show();
}
  fred.MOVEmouse();
  fred.show();
}
  void mouseClicked() {
  Walker[] temp = new Walker[home.length + 1];
  for (int i = 0; i < home.length; i++) {
    temp[i] = home[i];
  }
    temp[temp.length -1] = new Walker();
    home = temp;
}
