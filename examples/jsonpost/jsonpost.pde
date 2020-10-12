import http.requests.*;

public void setup() 
{
  size(400, 400);
  smooth();

  PostRequest post = new PostRequest("http://httprocessing.heroku.com");
  post.addHeader("Content-Type", "application/json");
  post.addData("{\"on\":false}");
  post.send();
  System.out.println("Reponse Content: " + post.getContent());
  System.out.println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
}
