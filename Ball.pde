class Ball{

  public float xPos,yPos,xFart,yFart;
  private color red = color(250,0,0);

  
  public Ball(float xPos, float yPos, float xFart, float yFart){
    setXPos(xPos);
    setYPos(yPos);
    endreXFart(xFart);
    endreYFart(yFart);
  }
  
  public void createBall(){
    fill(red);
    ellipse(this.xPos,this.yPos,50,50);
  }
  
  public void setXPos(float nyPos){
     this.xPos = nyPos;
  }
  
  public void setYPos(float nyPos){
     this.yPos=nyPos;
  }
  
  public float getXPos(){
     return this.xPos;
  }
  
  private void endreYFart(float nyFart){
    this.yFart=nyFart;
  }
  
  private void endreXFart(float nyFart){
    this.xFart=nyFart;
  }
  
  public void moveX(){
      this.xPos +=this.xFart;
  }
  
  public void moveY(){
      this.yPos +=this.yFart;
  }
  
  //De to neste funksjonene endrer farten på ballen
  public void hoyereFart(){
    if(this.xFart<0 && this.yFart<0){
       ball.endreXFart(-5);
       ball.endreYFart(-5);
    }
    else if(this.xFart>0 && this.yFart<0){
       ball.endreXFart(5);
       ball.endreYFart(-5);
    }
    else if(this.xFart>0 && this.yFart>0){
       ball.endreXFart(5);
       ball.endreYFart(5);
    }  
    else{
     ball.endreXFart(-5);
     ball.endreYFart(5);
    }
  }
  
  public void standardFart(){
    if(this.xFart<0 && this.yFart<0){
       ball.endreXFart(-2);
       ball.endreYFart(-2);
    }
    else if(this.xFart>0 && this.yFart<0){
       ball.endreXFart(2);
       ball.endreYFart(-2);
    }
    else if(this.xFart>0 && this.yFart>0){
       ball.endreXFart(2);
       ball.endreYFart(2);
    }  
    else{
     ball.endreXFart(-2);
     ball.endreYFart(2);
    }
  }
  
  //de tre neste funksjonene har med kollisjon mellom ball og firkantene
  public void snuBallHvisTrefferEnAvFirkantene(float rektangel1XPos, float rektangel1YPos, float rektangel2XPos, float rektangel2YPos){
    if(sjekkOmTrefferVenstreRektangel(rektangel1XPos,rektangel1YPos) || sjekkOmTrefferHoyreRektangel(rektangel2XPos,rektangel2YPos)){
      this.xFart*=-1;
    }
  }

  private boolean sjekkOmTrefferVenstreRektangel(float rektangel1XPos,float rektangel1YPos){
    return this.xPos-25<rektangel1XPos+30 && this.yPos+25>rektangel1YPos && this.yPos-25<rektangel1YPos+100;
  }

  private boolean sjekkOmTrefferHoyreRektangel(float rektangel2XPos,float rektangel2YPos){
    return this.xPos+25>rektangel2XPos && this.yPos+25>rektangel2YPos && this.yPos-25<rektangel2YPos+100;
  }


//De tre neste funksjonene har med kollisjon mellom ball og tak/bunn/vegger
  public void snuBallHvisTrefferTakEllerVegg(){
    if(sjekkOmTrefferVegg()){
      this.xFart*=-1;
    }
    if(sjekkOmTrefferTak()){
      this.yFart*=-1;
    }
  }


  boolean sjekkOmTrefferVegg(){
    return this.xPos<25 || this.xPos>width-25;
  }

  boolean sjekkOmTrefferTak(){
    return this.yPos<25 || this.yPos>height-25;
  }
  

}
