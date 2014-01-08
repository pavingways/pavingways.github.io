---
layout: post
title:  "XTech 2007 - Widgets and Mobile / Slides"
date:   2007-05-27 13:03:08
categories: imported
---
<img src="http://www.pavingways.com/wp-content/uploads/xtech_07.png" style="float: right; margin-left: 10px;" />Finally I get to post something about my visit to Paris and specifically the XTech conference 2007. I went to XTech to speak about "[Ajax on mobile devices - making mobile web apps ubiquitous][1]" and of course to attend as many of the other sessions as possible. Here's some of my observations: The location (Novotel Paris Tour Eiffel) was ok, I liked the last location in Amsterdam better though, because the different tracks were closer to each other. The organization was excellent as usual, special thanks to [IDEAlliance][2] and [Edd Dumbill][3] for that. I even did not have a problem accessing the wireless network - contrary to many others. <!--more-->


## Mobile
 XTech's moto this year was "The ubiquitous web" - naturally almost all presentations I attended dealt with ubiquitousity in some ways. To cut it short, for me there were two major topics: widgets and mobile. It felt like everybody was doing something with either widgets or in the mobile space, but this might partially be related to my choice of talks. Compared to XTech 2006 with 3 talks specifically about mobile topics, XTech 2007 featured 5 talks in the mobile space. From the questions in the audience, especially in widget-related sessions the interest in mobile applications in general is growing too. The conference was [divided into 4 tracks][4] and I guess other tracks were less widget/mobile oriented then the ones I attended. The talks of [Ralph from Jaiku][5] and [Guido from Nokia][6] were very interesting. Guido even managed to do a live demo of his [Application][6] - something many other were not able to do. I also had extensive discussions with many people from Opera, met Hakon and some others again, [Arve][7] for the first time. Opera Mobile 9 should come out in a couple of weeks, 2 months at most I would say (Opera's policy on this: it comes out when it's done). The new browser will have support for widgets, but due to security issues will not provide access to many device capabilities yet (although it's possible). 

## Widgets
 The "major players" at the conference in my view were 3 companies/organizations: W3C, Opera and Joost. The first day's birds-of-a-feather (BOF) sessions were a prime example for that, at least the ones about [geolocation][8] and [widgets][9]. The BOF session about widgets sounded a bit pessimistic. Problems over problems and different issues, partly solvable, partly very hard to come by were discussed. But that's probably what a developer conference is about: discussions about how to deal with problems when implementing something new. Charles from Opera and Robin from Joost MC'd the session. These were the main points/problems covered: 

*   security (in general and especially when widgets get access to applications and hardware)

*   privacy (how much can a user influence to which extend a widget can get access to the user's data)

*   interoperability (widgets talking to each other)

*   portability/interoperability (widgets working in different widget engines)

*   standardizations (how are widgets implemented)

*   mobile vs. desktop widgets

 An interesting (although obvious) though about the last point is: Even if widget engines use the same implementation for widgets (i.e. XHTML/CSS/JS) on both the desktop and the mobile, there is still an issue of screen size (your desktop weather widget might not fit on your mobile screen) - that's where the media attribute/different media types for CSS files come in handy. The mobile widget engine should therefore always prefer the CSS files with a "mobile" media attribute - this way, a widget could use the same code, but 2 different presentations and therefore become interoperable and usable in desktop and mobile engines. 


## Standards
 Another big topic is standardization - of widgets, of device APIs that widgets can access, of geolocation information, of Ajax in general - there's a lot to do in this area. One interesting project is Ryan's <http://www.locationaware.org>, a project aimed at standardizing the way a web application can get access to the user's location information. 

## My Presentation
 My presentation went pretty well, Hakon introduced me to the audience and there I was presenting my 1st very own presentation at a conference. I made one mistake however: answering questions in between sections of my talk. This costs loads of time and can be quite disrupting, especially if people oppose your basic naming conventions: There were some people in the audience that were not happy with the term "Mobile Ajax" because it hints towards "Mobile Ajax" being something else as "Desktop Ajax". I tried to clarify this and my basic opinion on this is: technically it's of course nothing else, but in the mobile space you have a different environment (browsers/run-times/java apps) and you have to deal with different problems. Therefore I still think the term "Mobile Ajax" is a valid description of what we are looking at. Currently I also feel that a general approach to implementing Ajax accross devices and desktop cannot succeed and that currently you will have to do specific research in the mobile space, especially when it comes to Ajax and related technologies. That's what I wanted to present at XTech and from people talking to me after the session and from the questions raised during the Q&A session this appears to be a good approach. [Here's my slides from the presentation][10].

[1]: http://2007.xtech.org:80/public/schedule/detail/150
[2]: http://www.idealliance.org/
[3]: http://2007.xtech.org:80/public/content/about
[4]: http://2007.xtech.org:80/public/schedule/grid
[5]: http://2007.xtech.org:80/public/schedule/detail/90
[6]: http://2007.xtech.org:80/public/schedule/detail/210
[7]: http://virtuelvis.com/
[8]: http://2007.xtech.org/public/schedule/detail/222
[9]: http://2007.xtech.org/public/schedule/detail/224
[10]: http://www.pavingways.com/wp-content/uploads/mobile_ajax_xtech_2007.pdf "Mobile Ajax XTech 2007"