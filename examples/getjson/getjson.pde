import httprocessing.*;
import org.json.*;

public void setup() 
{
 size(400,400);
 smooth();

 GetRequest get = new GetRequest("http://connect.doodle3d.com/api/list.example");
 get.send(); // program will wait untill the request is completed
 println("response: " + get.getContent());

 JSON response = JSON.parse(get.getContent());
 println("status: " + response.getString("status"));
 JSON boxes = response.getJSON("data");
 println("boxes: ");
 for(int i=0;i<boxes.length();i++) {
  JSON box = boxes.getJSON(i);
  println("  wifiboxid: " + box.getString("wifiboxid"));
 };
}
