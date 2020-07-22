package _01_intro_to_static;

public class Athlete {
    static int nextBibNumber = 0;
    static String raceLocation = "NewYork";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
        nextBibNumber ++;
        bibNumber = nextBibNumber;
    }

    public static void main(String[] args) {
        //create two athletes
    	//nextBibNumber++;
        //print their names, bibNumbers, and the location of their race. 
    	Athlete bob = new Athlete("Bob", 10);
    	System.out.println(bob.name);
    	System.out.println(bob.speed);
    	System.out.println(bob.bibNumber);
    	Athlete joe = new Athlete ("Joe", 11);
    	System.out.println(joe.name);
    	System.out.println(joe.bibNumber);
    System.out.println(joe.speed);
    System.out.println(joe.raceLocation);
    System.out.println(bob.raceLocation);
    System.out.println(bob.nextBibNumber);
    System.out.println(joe.nextBibNumber);
    }
}