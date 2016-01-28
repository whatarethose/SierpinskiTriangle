public void setup()
{
	background(0);
	size(500,500);
}
public void draw()
{
	sierpinskiCarpet(50,50,400);
}
public void mouseDragged()//optional
{

}
public void sierpinskiTriangle(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x,y,x+len,y,x+len/2,y-len);
	}
	else
	{
		sierpinskiTriangle(x,y,len/2);//bottom right
		sierpinskiTriangle(x+len/2,y,len/2);//bottom right
		sierpinskiTriangle(x+len/4,y-len/2,len/2);//top
	}
}
public void sierpinskiCarpet(int x,int y,int len)
{	
	//noStroke();
	if(len <=10)
	{
		
		fill(255);
		rect(x,y,len,len);
	}
	else
	{
		sierpinskiCarpet(x,y,len/3);//top left
		sierpinskiCarpet(x+len/3,y,len/3);//middle top
		sierpinskiCarpet(x+2*len/3,y,len/3);//top right
		sierpinskiCarpet(x,y+len/3,len/3);//middle left
		sierpinskiCarpet(x+2*len/3,y+len/3,len/3);//middle right
		sierpinskiCarpet(x,y+2*len/3,len/3);//bottom right
		sierpinskiCarpet(x+len/3,y+2*len/3,len/3);//bottom middle
		sierpinskiCarpet(x+2*len/3,y+2*len/3,len/3);//bottom right
	}
}