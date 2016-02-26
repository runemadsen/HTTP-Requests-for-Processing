Introduction
------------

HTTP Requests for Processing is a small library that takes the pain out of doing HTTP requests in Processing. 

HTTP Requests for Processing is based on code by [Chris Allick](http://chrisallick.com/) and [Daniel Shiffman](http://www.shiffman.net/).


How to
------------
Install the library by [downloading the latest release](https://github.com/runemadsen/HTTProcessing/releases) or via the [Processing contribution manager](http://wiki.processing.org/w/How_to_Install_a_Contributed_Library).

Then import the library in your sketch:
```Java    
import http.requests.*;
```
Then you can make GET and POST requests from your code:
```Java
GetRequest get = new GetRequest("http://httprocessing.heroku.com");
get.send();
println("Reponse Content: " + get.getContent());
println("Reponse Content-Length Header: " + get.getHeader("Content-Length"));
    
PostRequest post = new PostRequest("http://httprocessing.heroku.com");
post.addData("name", "Rune");
post.send();
println("Reponse Content: " + post.getContent());
println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));
```
To authenticate requests using a Basic Access authentication scheme, include the following in your requests:
```Java    
get.addUser("username", "password");
post.addUser("username", "password");
```    
 To add a header to your request, including the following:
```Java 
 //method: addHeader(name,value)
 get.addHeader("Accept", "application/json");
 post.addHeader("Content-Type", "application/json");
``` 
