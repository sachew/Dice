
  void setup()
  {
      noLoop();
      size(600,600);
      
  }
  void draw()
  {
      background(0,0,0);
      int counter = 0;
      int y = 10;
      for(int i = 0; i<6; i+=1){
        for(int m=0; m<480; m+=80){
          Die dice1 = new Die(75+m,y);
          dice1.roll();
          dice1.show();
          counter+=dice1.dots;
          fill(199, 206, 234);
        }
        y+=80;
      }
      textSize(24);
      text("Total: " + counter, 300, 550);
      
  }
  void mousePressed()
  {
      redraw();
      
  }
  class Die 
  {
      
      float myX, myY;
      int dots;
      int size = 50;
      
      Die(int x, int y) 
      {
          
          myX = x;
          myY = y;
      }
      void roll()
      {
          dots = (int)(Math.random()*5+1);
      }
      void show()
      {
          fill((int)(Math.random()*45+180),(int)(Math.random()*120+130),(int)(Math.random()*70+180));
          rect(myX,myY,50,50);
          fill(0,0,0);
          if(dots==1){
            ellipse(myX + size/2, myY + size/2, 10, 10);
          } else if(dots==2){
            ellipse(myX + size/4,myY + size/4, 10, 10);
            ellipse(myX + size*3/4,myY + size*3/4, 10, 10);
          } else if(dots==3){
            ellipse(myX + size/4,myY + size/4, 10, 10);
            ellipse(myX + size/2, myY + size/2, 10, 10);
            ellipse(myX + size*3/4,myY + size*3/4, 10, 10);
          } else if(dots==4){
            ellipse(myX + size/4,myY + size/4, 10, 10);
            ellipse(myX + size/4,myY + size*3/4, 10, 10);
            ellipse(myX + size*3/4,myY + size*3/4, 10, 10);
            ellipse(myX + size*3/4,myY + size/4, 10, 10);
          } else{
            ellipse(myX + size/4,myY + size/4, 10, 10);
            ellipse(myX + size/4,myY + size*3/4, 10, 10);
            ellipse(myX + size*3/4,myY + size*3/4, 10, 10);
            ellipse(myX + size*3/4,myY + size/4, 10, 10);
            ellipse(myX + size/2, myY + size/2, 10, 10);
          }
      }
  }
