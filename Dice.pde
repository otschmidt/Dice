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
		//variable initializations here
	}
	void roll()
	{
		double dRandom = Math.random();
		if(dRandom < .16)
			dieNum = 1;
		else if(dRandom<.32)
			dieNum = 2;
		//your code here
	}
	void show()
	{
		fill(255);
		rect(x,y,25,25);
		//your code here
	}
}
