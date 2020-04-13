import http.requests.*;

public void setup()
{
  size(400,400);
  smooth();

  GetRequest get = new GetRequest("http://dummy.restapiexample.com/api/v1/employees");
  get.send(); // program will wait untill the request is completed
  println("response: " + get.getContent());

  JSONObject response = parseJSONObject(get.getContent());
  println("status: " + response.getString("status"));
  println("data: " + response.getJSONArray("data"));
}
