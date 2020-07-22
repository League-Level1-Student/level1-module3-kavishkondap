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
	Bug bug = new Bug ();
	Location location = new Location (0, 0);
	world.add(location, bug);
	Bug bug2 = new Bug ();
	Location location3 = world.getRandomEmptyLocation();
	world.add(location3, bug2);
	bug2.setColor(Color.BLUE);
	bug2.setDirection(90);
	Flower flower = new Flower ();
	Location location2 = new Location (location3.getCol()+1, location3.getRow()+1);
	world.add(location2, flower);
}
}
