Introduction
------------

HTTProcessing is a small library that takes the pain out of doing HTTP requests in Processing. To download the library for use in your Processing sketch, visit "Downloads" and download httprocessing.zip

Installation
------------
First download httprocessing.zip

Unzip the files into the "code" folder of your Processing sketch

Then import the library in your sketch:
    import httprocessing.*;

Then you can make GET and POST requests from your code:

    GetRequest get = new GetRequest("http://httprocessing.heroku.com");
    get.send();
    println("Reponse Content: " + get.getContent());
    println("Reponse Content-Length Header: " + get.getHeader("Content-Length"));
    
    
    PostRequest post = new PostRequest("http://httprocessing.heroku.com");
    post.addData("name", "Rune");
    post.send();
    println("Reponse Content: " + post.getContent());
    println("Reponse Content-Length Header: " + post.getHeader("Content-Length"));