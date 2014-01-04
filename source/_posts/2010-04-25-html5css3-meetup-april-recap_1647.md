---
layout: post
title:  "HTML5/CSS3 Meetup April Recap (updated)"
date:   2010-04-25 23:52:07
categories: prev javascript
---
It has been a few days ago, but I still wanted to provide a little recap of our last HTML5/CSS3 meetup. We were set up for eight people this time but only had a turnout of five. It was still a nice evening at 
<a href="http://www.frollein-restaurant.de">Frollein in Sachsenhausen</a>. Additional to great food there was some HTML5 with <a href="http://www.modernizr.com">Modernizr</a> presented by <a href="http://twitter.com/jesseberlin">Jesse</a> and a lot of <a href="http://nodejs.org">Node.js</a>.

<a href="http://www.modernizr.com">Modernizr</a> is a tool you can use as a fallback mechanism for new HTML5 pages. You include the JavaScript file in your HTML5 page and it detects the browser's compatibility for all sorts of new features. The tool adds classes for each supported HTML5 attribute to the document's body so you can take care of these document parts with special CSS classes. Modernizr also creates a special JavaScript object to do things like: 

    if (Modernizr.geolocation){ ...do geolocation stuff ... }

... kinda neat. It would be great to have this as a jQuery plugin or even better within the <a href="http://api.jquery.com/jQuery.support">jQuery.support</a> feature. Both <a href="http://twitter.com/kompozer">Andreas</a> and myself had prepared a WebSocket demo. My demo did not work, Andreas' did, at least halfway... 
There was incoming data from <a href="http://apiwiki.twitter.com/Streaming-API-Documentation">Twitter's brand new streaming API</a> to Node.js. The WebSocket connection to Chrome did not really want to work completely that evening, but we could see #fail-tagged tweets streaming in on the console :) I can not really recall the context, but there were also talking about <a href="http://code.stanziq.com/strophe/">Strophe</a>, a JavaScript XMPP library framework well worth looking into. 
<strike>I don't have access to Andreas' presentation</strike> (see below), but I also created one, so here's another introduction to Node.js: 

We were thinking of getting a small HTML5/CSS3 project going within the meetup group, so everybody has something to work on until the next meetup - I still think this is a good idea, now if I could just come up with something useful... 

The next meetup will be around the end of May, stay tuned! 

UPDATE: Andreas provided Links to his slides and the project itself, it's called <a href="http://github.com/kompozer/tweamer"><strong>tweamer</strong> and it is available on GitHub</a>. Here are the slides: 

If you want to attend the HTML5/CSS3 Meetup in Frankfurt in May, please sign up here: <a href="http://bit.ly/aVEmCm">http://bit.ly/aVEmCm</a>