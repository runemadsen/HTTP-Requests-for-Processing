import httprocessing.*;

public void setup() 
{
	size(400,400);
	smooth();
	
  GetRequest get = new GetRequest("http://connect.doodle3d.com/api/list.example");
  get.send(); // program will wait untill the request is completed
  println("response: " + get.getContent());

  JSONObject response = JSONObject.parse(get.getContent());
  println("status: " + response.getString("status"));
  JSONArray boxes = response.getJSONArray("data");
  println("boxes: ");
  for(int i=0;i<boxes.size();i++) {
    JSONObject box = boxes.getJSONObject(i);
    println("  wifiboxid: " + box.getString("wifiboxid"));
  }
}
