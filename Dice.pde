Die bob;
void setup()
{
	size(500,500);
	noLoop();
	bob = new Die(250,250);
}
void draw()
{
	bob.show();
	//your code here

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int x, y, dieNum;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		x=250;
		y=250;
		dieNum = 1;
	}
	
	void roll()
	{
		double dRandom = Math.random();
		if(dRandom < .16)
			dieNum = 1;
		else if(dRandom<.32)
			dieNum = 2;
		else if(dRandom<.48)
			dieNum = 3;
		else if(dRandom<.62)
			dieNum=4;
		else if(dRandom<.78)
			dieNum=5;
		else if(dRandom<.80)
			dieNum=6;
	}

	void show()
	{
		fill(255);
		rect(x,y,50,50);
		if(dieNum == 1)
			fill(0);
			ellipse(x+12,y+12,20,20);
		if(y<500)
			y = y+50;
			rect(x,y,25,25);
			ellipse(x+12,y+12,10,10);

	}

}
