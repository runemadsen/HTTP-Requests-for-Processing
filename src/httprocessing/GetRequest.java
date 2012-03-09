// Class to make a Post from Processing
// Based on "PostData" library by Chris Allick, http://chrisallick.com/
package httprocessing;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class GetRequest
{
	String url;

	public GetRequest(String url) 
	{
		this.url = url;
	}

	public void send() 
	{
		try {
			DefaultHttpClient httpClient = new DefaultHttpClient();

			HttpGet httpGet = new HttpGet(url);

			System.out.println( "executing request: " + httpGet.getRequestLine() );
			HttpResponse response = httpClient.execute( httpGet );
			HttpEntity   entity   = response.getEntity();

			//System.out.println("----------------------------------------");
			System.out.println( response.getStatusLine() );
			//System.out.println("----------------------------------------");

			if( entity != null ) entity.writeTo( System.out );
			if( entity != null ) EntityUtils.consume(entity);

			httpClient.getConnectionManager().shutdown();
		} catch( Exception e ) { 
			e.printStackTrace(); 
		}
	}
}
