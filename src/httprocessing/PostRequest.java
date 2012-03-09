// Class to make a Post from Processing
// Based on "PostData" library by Chris Allick, http://chrisallick.com/
package httprocessing;

import java.util.ArrayList;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public class PostRequest
{
	String url;
	ArrayList<BasicNameValuePair> nameValuePairs;
	
	String content;
	HttpResponse response;

	public PostRequest(String url) 
	{
		this.url = url;
		nameValuePairs = new ArrayList<BasicNameValuePair>();
	}

	public void addData(String key, String value) 
	{
		BasicNameValuePair nvp = new BasicNameValuePair(key,value);
		nameValuePairs.add(nvp);
	}

	public void send() 
	{
		try {
			DefaultHttpClient httpClient = new DefaultHttpClient();

			HttpPost httpPost = new HttpPost(url);

			httpPost.setEntity(new UrlEncodedFormEntity(nameValuePairs));

			response = httpClient.execute( httpPost );
			HttpEntity   entity   = response.getEntity();
			this.content = EntityUtils.toString(response.getEntity());

			if( entity != null ) EntityUtils.consume(entity);

			httpClient.getConnectionManager().shutdown();
			
			// Clear it out for the next time
			nameValuePairs.clear();

		} catch( Exception e ) { 
			e.printStackTrace(); 
		}
	}
	
	/* Getters
	_____________________________________________________________ */
	
	public String getContent()
	{
		return this.content;
	}
	
	public String getHeader(String name)
	{
		Header header = response.getFirstHeader(name);
		if(header == null)
		{
			return "";
		}
		else
		{
			return header.getValue();
		}
	}
}
