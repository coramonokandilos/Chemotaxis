Bacteria [] colony;

 //declare bacteria variables here   
 void setup()   
 {     
 	size(400, 400);
 	colony = new Bacteria [300];
 	for (int i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(0);
 	for(int j = 0; j < colony.length; j++)
 	{
 		colony[j].walk();
 		colony[j].show();
 	}
 	
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	Bacteria()
 	{
 		myX = 200; 			
 		myY = 200;
 	}  
 	void walk()
 	{
 		myX = myX + (int)(Math.random()*5)-2;
 		myY = myY + (int)(Math.random()*5)-2;

 	}
 	void show()
 	{

 		fill(255);
 		rect(myX, myY, 10, 10);
 	}
 }    
