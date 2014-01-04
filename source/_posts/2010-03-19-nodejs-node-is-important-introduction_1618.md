---
layout: post
title:  "Node.js is Important. An Introduction"
date:   2010-03-19 23:46:20
categories: prev javascript
---
Once in a while you come across a new technology and are just blown away by it. You feel that something like this should have been around much earlier and that it is (gonna be) a significant milestone, not just in your own live as a developer but in general. The last time this happened to me was when I dug a bit deeper into a project called [node.js][1] or just "node" as the binary is called. In case you have not heard about this don't worry. However, if you are a developer, especially if you are working with JavaScript, then you should be concerned and maybe check your news sources, because it is a couple of months old already and it is drawing a lot of attention lately! If you're not a developer this might get a bit techy from here, but maybe you get something out of it after all... 

### What is node.js?
 It's actually not too easy to explain, but basically node.js is an: 

*   open-source

*   low-level

*   evented

*   [non-blocking][2]

*   [event loop][3] based

*   [SSJS][4] runtime environment

 It is written in C and JavaScript, it contains the 

[V8 JavaScript engine][5], a [CommonJS][6] module system and it helps you to implement highly [concurrent web servers][7] by handling I/O very efficiently, namely in a [non-blocking][8] way. Support for TCP, DNS and HTTP is included and many HTTP features are supported that are important for [Comet][9]-style web applications - things like hanging requests. Node.js itself is a program that will have to be compiled and installed on your machine. Then you can use JavaScript to write programs that use the API of node.js and that are executed through the node binary as simple as this: "node yourprogram.js". Due to the included V8 you have the complete JavaScript API available, it's just that you are not running your JavaScript program inside of a browser context, but as a program within the node.js environment. Node extends the JS API by several things like access to the file system and such. All of this is what [server-side JavaScript][4] is all about. 

### What is Special about node.js?
 There are other implementations for this kind of stuff, but what [Ryan Dahl][10] [et al][11] do differently with node.js is to use **JavaScript** as the main programming language and the strict paradigm of exclusively working with callbacks and** non-blocking I/O**. This means that basically any function you are executing in a node.js program does work in the background after calling, executing a **callback function** once it is done. This enables the program itself to continue and not to block any resources while it is waiting for the function to finish whatever it does. 

### A Practical Example: The Web Server
 Ok, this is a bit dry and mind-bending maybe, but it all makes a lot of sense: Think about [thousands of internet users entering the URL of your website][12] causing their web browsers to hit your web server at the same time (maybe they fire Ajax requests too). Each of these requests would cause a **thread** in your regular web server (= Apache) to spawn that executes a script (PHP maybe) which does DB queries and such before finally returning the response to the browser. Here we have 2 things to look at: memory usage and blocking I/O. Each of these threads uses memory. Many threads use a lot of memory. Thousands of users would cause thousands of threads to use a lot of memory...you see where this is going...you will run out of memory soon and your page or service will not respond anymore. Blocking I/O is the cause for that problem: each one of these threads does things like DB access which takes some time to finish. This is normal because the DB tables might be huge and queries might take long to find the result you are looking for. Now the script on your web server would usually execute a DB query, **then wait until it gets a result** from the DB server and then continue. While the DB server fetches your data your whole script is blocked. It does not continue to run until the result has come back and it is using memory and other resources while waiting. If this happens **several thousand times at once **this blocks a lot of resources and your server goes into a memory dry spell. If it would be possible to get rid of all these threads and to put them all into a big pool this would solve some memory issues. If it on top of that would be possible to continue doing other tasks while waiting for DB queries this would surely help performance to increase - and that's what node.js does. 

### Event Loop to the Rescue
 A node-based server will pool all incoming connections and the underlying node framework can do things like **hanging these connections** to a "waiting" state while allowing the server to continue working on creating the response. The **event loop and the callback paradigm** in node.js is used to execute a DB query, but not wait for a response blocking a lot of resources. Rather a callback is attached to the DB result and node.js goes on with other tasks (saving CPU cycles). For the browser on the other side this results simply in a "waiting for response" situation, same as for the threaded server. So, whenever the result from the DB comes back, node.js is executing whatever callback function was attached to the querying function and once the request is ready it will get the related connection from the pool, end its "waiting" state and return it to the browser. This is causing way less memory usage and allows for much faster response times. This is just a tiny bit of the whole story, so make sure you [get into][13] this! 

### But Why is this Important?
 Well, Ajax and Comet-driven web applications are generating heavy load on web servers, especially if you look at chat applications or multiplayer browser games where there are **many concurrent connections** and small response times are essential. Here lays the strength of node.js. In the past to me it felt like we had reached a time where the traditional way to implement our web servers would not fit to the demands that we had on the client-side during the last months. [Comet and Ajax-Push is a big hack][14], [HTML5 Web Sockets][15] are knocking at our door and we want to do things like [real time data streaming][16]. Node.js can fill this need. Sure, it takes some time of getting used to for developers that have been working with "traditional" Ajax paradigms for the past years. It also seems like we would walk into a time where regular websites and Ajax driven web applications would get their own servers. But it surely feels like we would finally have a toolkit which solves many of our newly developed needs and which brings the web as a whole a big step further. It might well be the best thing since sliced bread. On top of that it is now possible to write a simple web server and basically all the server side logic in JavaScript, which is great if you are working with JavaScript on the client side as well. To close this I can just encourage anybody working with Ajax or Comet or even just JavaScript in any way [to look into node.js][13] - it helped me to understand web server issues in more detail and I will be working with this and see where it goes. As it seems some [others are working with this already too][17] and even Simon Willison [was excited][18] after Ryan Dahl gave a good introduction to node.js at [last year's JSConf][19]:

[1]: http://nodejs.org/
[2]: http://en.wikipedia.org/wiki/Asynchronous_I/O
[3]: http://en.wikipedia.org/wiki/Event_loop
[4]: http://en.wikipedia.org/wiki/Server-side_JavaScript
[5]: http://en.wikipedia.org/wiki/V8_(JavaScript_engine)
[6]: http://commonjs.org/
[7]: http://en.wikipedia.org/wiki/Concurrency_(computer_science)
[8]: http://www.kegel.com/dkftpbench/nonblocking.html
[9]: http://en.wikipedia.org/wiki/Comet_(programming)
[10]: http://tinyclouds.org/
[11]: http://github.com/ry/node
[12]: http://www.kegel.com/c10k.html
[13]: http://s3.amazonaws.com/four.livejournal/20091117/jsconf.pdf
[14]: http://cometdaily.com/2007/12/11/the-future-of-comet-part-1-comet-today/
[15]: http://dev.w3.org/html5/websockets/
[16]: http://www.google.com/search?q=data+streaming+realtime+web
[17]: http://wiki.github.com/ry/node/
[18]: http://simonwillison.net/2009/Nov/23/node/
[19]: http://jsconf.eu/2009/