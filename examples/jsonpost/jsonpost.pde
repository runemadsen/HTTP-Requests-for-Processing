import http.requests.*;

public void setup() {
  size(400, 400);
  PostRequest post = new PostRequest("http://dummy.restapiexample.com/api/v1/create");
  post.addHeader("Content-Type", "application/json");
  post.addData("{\"name\":\"Daniel Shiffman\",\"salary\":\"123\",\"age\":\"23\"}");
  post.send();
  System.out.println("Reponse Content: " + post.getContent());
  System.out.println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
}
