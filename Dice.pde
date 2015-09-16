Die stupid;
int i;
int j;
int dieCount;
void setup()
{
  size(300,320);
  noLoop();
  textAlign(CENTER);
}
void draw()
{ background(255);
  dieCount=0;
  for(i=0;i<300;i+=100){
    for(j=0;j<300;j+=100){
  Die stupid=new Die(i, j);
  stupid.show();
  dieCount=dieCount+stupid.dieNum;
    }
  }
  text("Numero de Dotos:" +dieCount,200,315);
  text("Numero de Diceo: 9",100,315);
}
void mousePressed()
{
  redraw();
  dieCount=0;
}
class Die //models one single dice cube
{
  
  int dieNum, myX, myY;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    dieNum=(int)((Math.random()*6)+1);;	//variable initializations here
  }
  void roll()
  {
    
  }
  void show()
  {
  fill(255);
    rect(myX, myY, 100, 100);
   
    fill(0);
    if (dieNum==1){ 

      ellipse(myX+50, myY+50, 20, 20);
    
    }
      if (dieNum==2){ 
        ellipse(myX+35, myY+35, 20, 20);
        ellipse(myX+65, myY+65, 20, 20);
        }
      if(dieNum==3){
        ellipse(myX+25,myY+25,20,20);
        ellipse(myX+50,myY+50,20,20);
        ellipse(myX+75,myY+75,20,20);
        
      }
      if(dieNum==4){
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+75,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      
      }
      if(dieNum==5){
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
      ellipse(myX+50,myY+50,20,20);
      
      }
      if(dieNum==6){
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+50,20,20);
      ellipse(myX+25,myY+75,20,20);
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+75,myY+50,20,20);
      ellipse(myX+75,myY+75,20,20);
      
      }
      
  }
}

