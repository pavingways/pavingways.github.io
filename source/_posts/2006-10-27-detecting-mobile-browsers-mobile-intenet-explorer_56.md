---
layout: post
title:  "Detecting Mobile Browsers - Mobile Internet Explorer"
date:   2006-10-27 14:57:52
categories: prev javascript
---
A little while ago [Team IEMobile][1] posted an interesting article on [their blog][2] about changes in the [User-Agent string][3] that is sent to the web server when the browser requests a document. The browser of the Windows Mobile OS will undergo a rather radical change concerning this browser identification string that is often used by web developers to detect the browser in order to take advantage of it's unique features. Unfortunately the schema of the User-Agent string was not clear to many website creators in the past. Even the MSN website had problems of detecting the mobile IE correctly. 

The browser of current and older Windows Mobile versions sends two different User-Agent strings, depending on what platform the OS runs on: 

*   Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; PPC; 240x320)

*   Mozilla/4.0 (compatible; MSIE 4.01; Windows CE; Smartphone; 176x220)

 Unfortunately the User-Agent string may or may not contain certain parts, for example the resolution information or even the "MSIE 4.01". Therefore the only sure shot you can have at detecting the older and current Mobile Internet Explorers correctly is by detecting both "

**Smartphone**" or "**PPC**" and "**Windows CE**". 

However this will change with the new version of the browser that comes out on new devices sporting the Windows Mobile 5.0 OS. For new devices the IE Mobile User-Agent string will look like this: 

<!--more-->


*   Mozilla/4.0 (compatible; MSIE 6.0; Windows CE; IEMobile m.n) XYZ

 The "m.n" is a version number and it can differ from release to release. Thus it can also be used to take advantage of new features of every release. "XYZ" can be added by OEMs and it can basically include anything the OEM wants it to contain. Team IEMobile recommends to look for "

**IEMobile**" in the User-Agent string to be sure to detect the browser correctly, since this part will never change. It is also not necessary to make a distinction between smartphone and ppc versions anymore - both browsers are built from the same code base and have identical features. 

So how do you get info about e.g the resolution of the device? That's what additional headers are there for - and not the User-Agent string! The browser sends additional UA headers to the server upon requesting document that contain information screen size, color depth, operating system, CPU type (not always on smartphones) and VoIP features (new) of the device. Those headers - that by the way are there at least since Windows Mobile 2002 - look like this: 

*   UA-pixels: {i.e. 240x320}
*   UA-color: {mono2 | mono4 | color8 | color16 | color24 | color32}
*   UA-OS: {Windows CE (POCKET PC) - Version 3.0}
*   UA-CPU = {i.e. ARM SA1110}
*   UA-Voice = {TRUE | FALSE}

([here is some more info about UA headers and IIS][4]) 

Another nice feature of the new IEMobile is a special meta tag that can be used to tell the browser to ignore the user display setting, turn off all layout optimizations and force the browser to render a page in "desktop" mode: 

    <meta name="MobileOptimized" content="width">

(<a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/mobilesdk5/html/wce51conLayoutMetaTag.asp">read more about this here...</a>)

Unfortunately Team IEMobile did not mention what new features we can expect from new browser versions. Especially CSS and JavaScript/XHR support would have been very interesting topics. But the post provides some very important information about how to be sure to detect the right browser version and even how to get additional information about the device the browser runs on.

Here's another related link: <a href="http://msdn.microsoft.com/library/default.asp?url=/library/en-us/mobilesdk5/html/mob5oriMobileWebSiteDesignOverview.asp">Microsoft's Mobile Web Site Design Overview</a> - a list of recommended techniques

[1]: http://blogs.msdn.com/iemobile/default.aspx "Team IEMobile"
[2]: http://blogs.msdn.com/iemobile/default.aspx "Team IEMobile Blog"
[3]: http://en.wikipedia.org/wiki/User_agent#Browsers
[4]: http://msdn.microsoft.com/library/default.asp?url=/library/en-us/wcepie/html/ceconidentifyingpocketinternetexplorertowebserver.asp