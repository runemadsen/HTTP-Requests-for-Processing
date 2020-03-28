import http.requests.*;

public void setup() 
{
	size(400,400);
	smooth();
	
	DeleteRequest delete = new DeleteRequest("http://httprocessing.heroku.com");
	delete.send();
	System.out.println("Reponse Content: " + delete.getContent());
	System.out.println("Reponse Content-Length Header: " + delete.getHeader("Content-Length"));
}
