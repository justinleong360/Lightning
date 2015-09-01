int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
size(500,500);	
background(0,0,0);
strokeWeight(3);
}

void draw()
{
stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
while (endY < 500) {
	endY = startY + (int)(Math.random()*10);
	endX = startX + (int)(Math.random()*20)-10;
	line(startX, startY, endX, endY);
	startX = endX;
	startY = endY;
}
}

void mousePressed()
{
startX = (int)(Math.random()*500);
startY = -20;
endX = (int)(Math.random()*500);
endY = -20;
redraw();
}

void keyPressed() {
  if (key == 'r') {
    background(0,0,0);
    }
}