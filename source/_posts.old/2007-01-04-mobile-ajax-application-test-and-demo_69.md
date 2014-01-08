---
layout: post
title:  "Mobile AJAX application to test and demo"
date:   2007-01-04 16:37:24
categories: prev javascript
---
<p>
      In <a href="http://www.pavingways.com/xml-2006-conference-boston-co-speaking_68.html">my presentation</a> at the <a href="http://2006.xmlconference.org/">XML 2006 conference in Boston </a>I tried to show that AJAX - as a technology in part based on XML - is a useful and promising tool to create web applications on mobile devices.
    </p>
    
    <p>
      To emphasize this, I updated our <a href="http://pwmwa.com/gc/">event finder application</a> that we had used on this year's <a href="http://www.gc-germany.com/">Games Convention</a> in Leipzig, Germany. The application basically is a website for mobile phones that shows the currently running events of a trade show or conference. In the <a href="http://www.pwmwa.com/xml06/">updated version for the XML 2006 conference</a> I added some AJAX stuff to show and test it's usefulness:
    </p>
    
    <p>
      <!--more--> If you open the URL (
      
      <a href="http://www.pwmwa.com/xml06/">http://www.pwmwa.com/xml06/</a>) you will get a list of all events currently running and those coming up during the next 24 hours. Every event in this list contains a link that points to a page with detailed information about the event. Using JavaScript this link is captured and an XHR call is made to retrieve the details of the event ad show them directly on the list, saving a lot of unnecessary page reloads and making the page (theoretically) work on different devices. Below the details of the event users can leave comments, which are also added to the list using XHR.
    </p>
    
    <p>
      Summarized, users load a list of events once and then load additional information to some events and post information to some others - always only loading the necessary parts of the page.
    </p>
    
    <p>
      One main point in my presentation was that cross-platform Mobile AJAX really is possible, because already many mobile web browsers support the XMLHttpRequest. For those that do not support it, the application needs to provide fall-backs, so it works without XHR as well. The event finder demo accordingly works on different mobile browsers: Pocket IE (IE Mobile), Opera Mobile (not Mini) and even Minimo make use of the AJAX capabilities, while other browsers, such as Opera Mini still work and just reload the whole page everytime you click somewhere.
    </p>
    
    <p>
      Speaking of support it became pretty clear that the phone at least needs to support XHTML ad CSS (WAP 2.0) correctly in order to use the application (which is XHTML-MP). A short test on a Nokia N80 quickly assured me that this phone's integrated browser has it's difficulties with the table-less CSS layout.
    </p>
    
    <p>
      The event finder really does AJAH, not AJAX - loading HTML parts instead of pure XML data - out of reasons I also explained in my presentation: with mobile AJAX you have to deal with a trade-off between small traffic and device capabilities. This means if you transfer pure XML with an XHR call, the traffic might be smaller compared to transferring HTML, but if you only receive XML data on the client you need to do a lot more post-processing (DOM scripting) in order to produce the desired output, which equals the HTML. To do this, the client (mobile phone browser) needs capabilities to do that (JavaScript implementation). Also the client uses more CPU and thus battery power, resulting in a shorter and probably slower overall experience. Therefore I currently see AJAH as the best solution for this type of problem.
    </p>
    
    <p>
      If you want, check out the mobile <a href="http://www.pwmwa.com/xml06/">event finder application for the XML 2006 conference</a> right <a href="http://www.pwmwa.com/xml06/">here</a> (best using your phone) - and tell me about it! Does XHR work on your device? Does the page show correctly (compare to mozilla output)? etc...
    </p>
    
    <p>
      Thanks to Dave for putting the link to the application on the XML 2006 conference website!
    </p>