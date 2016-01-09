package http.requests;
import org.junit.Test;

import static org.junit.Assert.*;

public class PostRequestTest {

    @Test
    public void basicUsageWithHeaderDoesNotThrowNPE() {
        System.out.println("basicUsageWithHeaderDoesNotThrowNPE");
        PostRequest instance = new PostRequest("http://anythingyoulike");
        instance.send();
        assertEquals("keep-alive", instance.getHeader("Connection"));
    }
}
