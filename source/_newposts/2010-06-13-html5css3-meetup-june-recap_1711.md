---
layout: post
title:  "HTML5/CSS3 Meetup June Recap"
date:   2010-06-13 12:40:35
categories: imported
---
Our June meetup for HTML5/CSS hackers was a hot one! We had around 30 degrees around here, and were sweating like crazy. Drinking hot tea apparently is a good helper (thanks [Björn][1]). Again, less people attended than anticipated (learning there again). Luckily there were also two new attendees, thanks for coming [Jens][2] and [Christoph][3]! The restaurant we picked was rather noisy, in part because they had all their windows open, which again also was rather unproductive air-condition wise...so maybe a restaurant is not a good place to do a tech meetup after all. That also did not help listening to [Dennis][4] from Hamburg, who joined us to present a project over Teamviewer/speakerphone. The project was pretty interesting though: Dennis is using a [Kaazing][5] server for his Facebook-based Tic-Tac-Toe game. The game logic runs inside a JSP web application on the server and is using the Kaazing component for messaging with the clients. Clients connect either via a WebSocket connection (here's the HTML5 part) or a fallback mechanism using Flash. The only thing to do for the developer is to include the Kaazing iframe component into the HTML of the game. Kaazing itself is a Java-based and enterprise-oriented product. WebSocket capabilities with fallback mechanisms and simple integration into web applications are underlining this. Thanks Dennis for the demo! Unfortunately there is no version of this online, it's all only working on a local machine. By the way [Kaazing apparently runs on the AppEngine][6]. We also covered some other topics, [SASS][7] was one of it. Opinions about using it diverted and some attendees were reluctant to it because it is ruby-based (workarounds are there) and because it forces you to learn another non-standard CSS language - valid points I think. Jens was kind enough hinting us towards the [WebTech Conference in Mainz][8], taking place October 11th to 13th. [Christian Heilmann][9] is one of the speakers, so this surely becomes an interesting conference. Finally we have been looking at some interesting HTML5-related links that I have been collecting lately. Here's the list: 

*   [http://happymagicfuntime.com/blog/html5\_for\_drunks][10] (fun read)

*   <http://remysharp.com/2009/07/06/rimshot-with-html5/> (audio bookmarklets)

*   <http://html5shiv.googlecode.com/svn/trunk/html5.js> (IE hack to enable HTML5 tags)

*   <http://html5.validator.nu> (using Mozilla's HTML5 parsing Engine) 
    
    *   about:config -> html5.enable in FF 3.6+ (3x faster parsing)
    
    *   [details here][11]
    
    *   [test page here][12]
    
    

*   <http://media.chikuyonok.ru/ambilight/> (HTML5 video with Ambilight effect)

*   <http://www.html5laboratory.com/drag-and-drop.php> (good intro)

 Thanks to all attendees and until next time.

[1]: http://www.wibben.de/
[2]: http://grochtdreis.de/
[3]: http://www.cschorr.de/
[4]: http://twitter.com/akaRufus
[5]: http://www.kaazing.com/
[6]: http://googleappengine.blogspot.com/2010/01/kaazing-creates-custom-licensing.html
[7]: http://sass-lang.com/
[8]: http://webtechcon.de/
[9]: http://www.wait-till-i.com/
[10]: http://happymagicfuntime.com/blog/html5_for_drunks
[11]: http://hacks.mozilla.org/2010/05/firefox-4-the-html5-parser-inline-svg-speed-and-more
[12]: http://silverwav.wordpress.com/2010/05/11/firefox-3-6-5-3x-faster-with-html5-enabletrue