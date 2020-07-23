package _06_gridworld;

import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
public static void main(String[] args) {
	World world = new World ();
	world.show();
//	Bug bug = new Bug ();
//	Location location = new Location (0, 0);
//	world.add(location, bug);
//	Bug bug2 = new Bug ();
//	Location location3 = world.getRandomEmptyLocation();
//	world.add(location3, bug2);
//	bug2.setColor(Color.BLUE);
//	bug2.setDirection(90);
//	Flower flowers = new Flower ();
//	Location location2 = new Location (location3.getRow(), location3.getCol()+1);
//	Flower flowerstuff = new Flower ();
//	Location location4 = new Location (location3.getRow(), location3.getCol() -1);
//	world.add(location4, flowerstuff);
//	world.add(location2, flowers);
for (int i = 0; i < 100; i++) {
	Flower flower = new Flower ();
 Location location = world.getRandomEmptyLocation();
	world.add(location, flower);
if(location.getRow() %2==0) {
	flower.setColor(Color.RED);
	
}else {
	flower.setColor(Color.WHITE);
}
}
}
}
