package _05_netflix;

public class StuffToRun {
public static void main(String[] args) {
	Movie movie1 = new Movie ("Title1", 0);
	Movie movie2 = new Movie ("Title2", 6);
	Movie movie3 = new Movie ("Title3", 7);
	Movie movie4 = new Movie ("Title4", 8);
	Movie movie5 = new Movie ("Title5", 9);
	System.out.println(movie1.getTicketPrice());
	NetflixQueue stuff = new NetflixQueue ();

	stuff.addMovie(movie1);
	stuff.addMovie(movie2);
	stuff.addMovie(movie3);
	stuff.addMovie(movie4);
	stuff.addMovie(movie5);

	System.out.println("The best movie is " + stuff.getBestMovie());
System.out.println("the second best movie is" + stuff.getMovie(1));
}
}
