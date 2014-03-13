Introduction
------------

HTTProcessing is a small library that takes the pain out of doing HTTP requests in Processing. To download the library for use in your Processing sketch, download [httprocessing.zip](https://github.com/downloads/runemadsen/HTTProcessing/httprocessing.zip).

HTTProcessing is based on code by [Chris Allick](http://chrisallick.com/) and [Daniel Shiffman](http://www.shiffman.net/).


Installation
------------

Simply clone this git repository into your Processing "libraries" folder, or use the download link to download the files to the same directory.

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


Building
--------

If you want to build the library (with javadocs, etc), run this from the git root folder:

    ant

That will generate the necessary JAR file into "libraries".
