
Spiller spiller1 = new Spiller(5,200);
Spiller spiller2 = new Spiller(765,200); //Spiller(xPos,yPos)
Ball ball = new Ball(300,200,4,4);//Ball(xPos,yPos,xFart,yFart)

color grey = color(150);
color white = color(250);
color bakgrunnsfarge =grey;

void setup(){
size(800,600);
}

void draw(){
background(bakgrunnsfarge);
line(width/2,0,width/2,height);
lageFigurene();
bevegeBall();
ball.snuBallHvisTrefferTakEllerVegg();
ball.snuBallHvisTrefferEnAvFirkantene(spiller1.getXpos(),spiller1.getYPos(),spiller2.getXpos(),spiller2.getYPos());
lagerPoengTavle();
leggeTilPoeng();
}


void keyPressed(){
  if(key==CODED && keyCode==UP){
    spiller1.setYPos(-5);
  }
  if(key==CODED && keyCode==DOWN){
    spiller1.setYPos(5);
  }
  if(key=='r' || key=='R'){
     spiller2.setYPos(-5);
  }
  if(key=='f' || key=='F'){
    spiller2.setYPos(5);
  }
  if(key==' '){
    ball.setXPos(width/2);
    ball.setYPos(height/2);
  }
  if(key=='S'||key=='s'){
    ball.hoyereFart();
  }
  
  if(key=='W'||key=='w'){
    ball.standardFart();
  }
  
}

void mousePressed(){
  if(bakgrunnsfarge==white){
      bakgrunnsfarge=grey;
  }
 else{
   bakgrunnsfarge=white;
 }
}

//De to neste funksjonene har med poengtavlen å gjøre
void lagerPoengTavle(){
  textSize(30);
  fill(0);
  text(spiller1.getPoeng()+" - "+spiller2.getPoeng(), width/2-40, 25);
}

void leggeTilPoeng(){
  if(ball.getXPos()<25){
    spiller2.endrePoeng();
  }
  if(ball.getXPos()>width-25){
    spiller1.endrePoeng();
  }
}

//Denne funksjonen lager figurene i spillet
void lageFigurene(){
spiller1.lageSpiller();
spiller2.lageSpiller();
ball.createBall();
}

//denne skaper bevegelse
void bevegeBall(){
ball.moveX();
ball.moveY();
}
