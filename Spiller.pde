class Spiller{
  
  private float xPos,yPos;
  private int poeng;
  private color blue = color(0,0,150);
  
  public Spiller(float xPos,float yPos){
    setYPos(yPos);
    this.xPos=xPos;
    poeng=0;
  }
  
  public void lageSpiller(){
      fill(blue);
      rect(this.xPos,this.yPos,30,100);
  }
  
  public void setYPos(float nyPos){
    this.yPos+=nyPos;
  }
  
  public void endrePoeng(){
    this.poeng++;
  }
  
  public float getXpos(){
    return this.xPos;
  }
  
  public float getYPos(){
      return this.yPos;  
  }
  
  public int getPoeng(){
    return this.poeng;
  }
  
  


}
