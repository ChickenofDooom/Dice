Die stupid;
int i;
int j;
void setup()
{
  size(1000,1000);
  noLoop();
}
void draw()
{ 
  for(i=0;i<=1000;i+=100){
    for(j=0;j<=1000;j+=100){
  Die stupid=new Die(i, j);
  stupid.show();
    }
  }
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int dieNum, myX, myY;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    dieNum=(int)((Math.random()*6)+1);	//variable initializations here
  }
  void roll()
  {
    //your code here
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

