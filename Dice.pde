Die bob;
int total = 0;
void setup()
{
	size(450,550);
	noLoop();
	
}
void draw()
{
	background((int)(Math.random()*150),100,150);
	int sum = 0;
	//your code here
	for(int myX=50 ; myX<=400 ; myX = myX+100)
	{
		for(int myY=50 ; myY<=400 ; myY = myY+100)
		{
			Die bob = new Die(myX,myY);
			bob.roll();
			bob.show();
			total = total+ bob.dieNum;
			sum = sum + bob.dieNum;
		}
			
	}
	text("Total of all rolls " + total, 50, 500);
	text("Current total " + sum, 200, 500);
}
void mousePressed()
{
	redraw();

}
class Die //models one single dice cube
{
	int x, y, dieNum, dieSize;
	//variable declarations here
	Die(int myX, int myY) //constructor
	{
		roll();
		x=myX;
		y=myY;
		dieSize = 5;
	}
	
	void roll()
	{
		dieNum = (int)((Math.random()*6)+1);
	}

	void show()
	{
		fill((int)(Math.random()*150),100,150);
		rect(x,y,50,50,15);
		fill(0);
		if(dieNum == 1){
			ellipse(x+25,y+25,dieSize,dieSize);
		}
		if(dieNum == 2){
			ellipse(x+15, y+15, dieSize,dieSize);
			ellipse(x+35,y+35, dieSize,dieSize);
		}
		if(dieNum == 3){
			ellipse(x+35,y+35,dieSize,dieSize);
			ellipse(x+25, y+25, dieSize,dieSize);
			ellipse(x+15,y+15, dieSize,dieSize);
		} 
		if(dieNum == 4){
			ellipse(x+35, y+15, dieSize,dieSize);
			ellipse(x+35, y+ 35, dieSize, dieSize);
			ellipse(x+15, y+35, dieSize,dieSize);
			ellipse(x + 15, y + 15, dieSize, dieSize);
 		}
 		if(dieNum == 5){
            ellipse(x+35,y+35,dieSize,dieSize);
            ellipse(x+35, y+15, dieSize,dieSize);
			ellipse(x+25, y+ 25, dieSize, dieSize);
			ellipse(x+15, y+35, dieSize,dieSize);
			ellipse(x +15, y + 15, dieSize, dieSize);
 		}
 		if(dieNum == 6){
  			ellipse(x+35,y+35,dieSize,dieSize);
  			ellipse(x+35,y+25,dieSize,dieSize);
  			ellipse(x+35,y+15,dieSize,dieSize);
  			ellipse(x+15,y+35,dieSize,dieSize);
  			ellipse(x+15,y+25,dieSize,dieSize);
  			ellipse(x+15,y+15,dieSize,dieSize);

 		}
 	}

}
