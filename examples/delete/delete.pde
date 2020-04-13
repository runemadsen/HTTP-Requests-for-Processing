import http.requests.*;

public void setup()
{
  size(400, 400);
  smooth();

  DeleteRequest delete = new DeleteRequest("http://dummy.restapiexample.com/api/v1/delete/971");
  delete.addHeader("Content-Type", "application/json");
  delete.send();
  System.out.println("Reponse Content: " + delete.getContent());
  System.out.println("Reponse Content-Length Header: " + delete.getHeader("Content-Length"));
}
