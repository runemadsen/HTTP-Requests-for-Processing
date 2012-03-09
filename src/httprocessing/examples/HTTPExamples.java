package httprocessing.examples;

import httprocessing.*;
import processing.core.PApplet;

public class HTTPExamples extends PApplet {
	
	public void setup() {
		size(400,400);
		smooth();
		
		// Make a GET request to itp-color.heroku.com
		GetRequest get = new GetRequest("http://httprocessing.heroku.com");
		get.send();
		
		// Make a POST request to itp-color.heroku.com
		PostRequest post = new PostRequest("http://httprocessing.heroku.com");
		post.addData("name", "Rune");
		post.send();
	}
	
	public static void main(String[] args) {
		PApplet.main(new String[] {"httprocessing.examples.HTTPExamples"});
	}
	
}
