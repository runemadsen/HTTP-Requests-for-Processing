import http.requests.*;

public void setup() 
{
  size(400, 400);
  smooth();

  PutRequest put = new PutRequest("http://httprocessing.heroku.com");
  put.addHeader("Content-Type", "application/json");
  put.addData("{\"on\":false}");
  put.send();
  System.out.println("Reponse Content: " + put.getContent());
  System.out.println("Reponse Content-Length Header: " + put.getHeader("Content-Length"));
}
