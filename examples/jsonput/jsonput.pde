import http.requests.*;

public void setup()
{
  size(400, 400);
  smooth();

  PutRequest put = new PutRequest("http://dummy.restapiexample.com/api/v1/update/43");
  put.addHeader("Content-Type", "application/json");
  put.addData("{\"name\":\"Daniel Shiffman\",\"salary\":\"1123\",\"age\":\"23\"}");
  put.send();
  System.out.println("Reponse Content: " + put.getContent());
  System.out.println("Reponse Content-Length Header: " + put.getHeader("Content-Length"));
}
