Walker [] rick;
void setup()
{
size(800,800);
background(0);
rick = new Walker[100];
for(int i = 0; i < rick.length; i++)
 rick[i] = new Walker();
}

void draw(){
background(0);
for(int i = 0; i < rick.length; i++){
  fill(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
  rick[i].walk();
  rick[i].show();
  
}
}
class Walker
{
    int myX,myY;
    Walker()
    {
      myX=myY=400;
    }
    void walk()
    {
      myX = myX + (int)(Math.random()*5) - 2;
      myY = myY + (int)(Math.random()*5) - 2;
    }
    void show()
    {
      ellipse(myX,myY,30,30);
      if(mouseX > myX)
        myX = myX + (int)(Math.random()*5) - 1;
      else 
        myX = myX + (int)(Math.random()*5) - 3;
      if(mouseY > myY)
        myY = myY + (int)(Math.random()*5) - 1;
      else 
        myY = myY + (int)(Math.random()*5) - 3;
    }
    
}
