Die bob;
void setup()
{
	size(500,500);
	noLoop();
	bob = new Die(250,250);
}
void draw()
{
	bob.roll(); 
	bob.show();
	//your code here

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int x, y, dieNum, dieSize;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		roll();
		x=250;
		y=250;
		dieSize = 5;
	}
	
	void roll()
	{
		dieNum = (int)((Math.random()*6)+1);
	}

	void show()
	{
		fill(255);
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
			ellipse(x+35, y+15, dieSize,dieSize);
			ellipse(x+15,y+25, dieSize,dieSize);
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
			ellipse(x+35, y+ 25, dieSize, dieSize);
			ellipse(x+15, y+35, dieSize,dieSize);
			ellipse(x +15, y + 15, dieSize, dieSize);
 		}
 		if(dieNum == 6);{

 		}
 	}

}
