Die theDream;
int value=(int)(Math.random()*6)+1;
int sum=0;
void setup()
{
	size(800,800);
	background(0);
	noLoop();
}
void draw()
{
	background(0);
	for(int myX=0;myX<751;myX=myX+50)
	{
		for(int myY=0;myY<751;myY=myY+50)
		{
			Die theDream=new Die(myX,myY);
			theDream.show();
			theDream.roll();
			if(value<7)
			{
				sum=sum+value;
			}
		}
	}
	strokeWeight(3);
	stroke(255);
	fill(0);
	rect(350,350,100,100);
	fill(255);
	textSize(25);
	textAlign(CENTER);
	text(sum,400,408);
}
void mousePressed()
{
	redraw();
	sum=0;
}
class Die 
{
	int x,y;
	Die(int myX, int myY) 
	{
		roll();
		x=myX;
		y=myY;
	}
	void roll()
	{
		if(Math.random()<0.16)
		{
			value=1;
		}
		else if(Math.random()<0.33)
		{
			value=2;
		}
		else if(Math.random()<0.5)
		{
			value=3;
		}
		else if(Math.random()<0.67)
		{
			value=4;
		}
		else if(Math.random()<0.83)
		{
			value=5;
		}
		else
		{
			value=6;
		}
	}
	void show()
	{
		stroke(255);
		strokeWeight(3);
		fill(0);
		rect(x,y,50,50);//your code here
		strokeWeight(10);
		stroke(255);
		fill(255);
		if(value==1)		
		{
			point(x+25,y+25);
		}
		else if(value==2)
		{
			point(x+10,y+10);
			point(x+40,y+40);		
		}
		else if(value==3)
		{
			point(x+10,y+10);
			point(x+25,y+25);
			point(x+40,y+40);
		}
		else if(value==4)
		{
			point(x+10,y+10);
			point(x+40,y+10);
			point(x+10,y+40);
			point(x+40,y+40);
		}
		else if(value==5)
		{
			point(x+10,y+10);
			point(x+40,y+10);
			point(x+25,y+25);
			point(x+10,y+40);
			point(x+40,y+40);
		}
		else
		{
			point(x+10,y+10);
			point(x+40,y+10);
			point(x+10,y+25);
			point(x+40,y+25);
			point(x+10,y+40);
			point(x+40,y+40);
		}
	}
}
