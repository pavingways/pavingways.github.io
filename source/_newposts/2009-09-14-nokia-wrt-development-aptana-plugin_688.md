---
layout: post
title:  "Hands-On Nokia WRT Development with Aptana"
date:   2009-09-14 20:48:36
categories: imported
---
Back in April we were invited to participate in the 

[Nokia WRT Widget Hackathon in Monaco][1]. The event took place during the [Nokia Developer Summit][2] and it was all about hacking a WRT widget together within 24 hours. 12 teams from around the world implemented widget ideas nominated in beforehand by the Nokia community. We chose to work on the travel planner idea because it relates pretty well to one of our upcoming services called [Panda Route - a travel diary service][3]. With this article I want to provide some basic insights on Nokia WRT widgets, how they work and how to implement and deploy them to handsets. WRT stands for [Web runtime][4] and it enables you to create small applications, namely widgets, entirely built on HTML, CSS and JavaScript. Widgets are packaged and then deployed and installed on the device alongside native applications where the run in a chrome-less web browser, the web runtime environment.<!--more--> The most basic widget consists of not more than a HTML file and a widget description file that defines some settings for the runtime and tells it where the widget's entry point is. Of course you would normally add images, a CSS file and some JavaScript that handles all the logic and enables you to access device specific capabilities, such as calendar entries or the messaging application. Nokia offers a WRT JavaScript library to render message boxes and buttons, we used 

[jQuery][5] for our widget, so this is definitely possible too. Widget files are then packaged into a .wgz file which really is just a renamed ZIP file. If you then send this .wgz file to a compatible device, it will detect that this is a widget and ask you to install it as an application. The basic work flow to develop such a widget would be like this: 

1.  write HTML/CSS/JavaScript in an editor, add images

2.  create the XML widget description file, namely Info.plist

3.  test your widget in a web browser

4.  ZIP it all into a package and rename it to .wgz

5.  send it to the device via bluetooth or upload it to a web server and download it via the device's web browser

6.  now your widget installs in the device's applications menu and can be used

 While this is feasible you might have noticed that this work flow has its flaws, especially when it comes to testing and deploying your widget. Therefore we were happy that Nokia joined forces with 

[Aptana][6] and created a [WRT plugin for Aptana Studio][7] that helps you to speed up this work flow and actually enables you to write and deploy a widget in such a short time that on-device testing becomes possible. Additional to code completion, syntax highlighting and all the other nice features Aptana Studio has to offer, you can very easily create, preview, package and even deploy your widget right out of the IDE to your device. We were using the windows version of Aptana Studio during the hackathon, but are usually working on Macs - it works there just as easily: You can switch to the preview pane while editing the widget's HTML file and choose from a collection of compatible Nokia phones defined by screen sizes. This gives you a more or less rough idea how the widget will look like on the device. Then you can right-click on the widget project and choose to package the whole thing into a .wgz file. Another right-click option is to deploy the widget to a device via bluetooth. This is the best feature because you can directly test your work on a real device this way. You can also deploy to Nokia's device emulator which however only runs on windows. Bottom line is if you have some experience with web development and want to get into developing widgets for Nokia, we can only recommend to [read some documentation][8], get [Aptana Studio][6] and the [WRT plugin][7] and get going in no time. Oh and don't forget to publish your widget on [Nokia's brand new OVI store][9] to make it accessible to millions of users and maybe even make a buck or two by selling it there.

[1]: http://www.pavingways.com/nokia-developer-summit-2009-wrap-up-day-1_517.html
[2]: http://events.nokia.com/developersummit/
[3]: http://pandaroute.com/
[4]: http://www.forum.nokia.com/Technology_Topics/Web_Technologies/Web_Runtime/
[5]: http://jquery.com/
[6]: http://aptana.com/
[7]: http://aptana.com/nokia
[8]: http://www.forum.nokia.com/Technology_Topics/Web_Technologies/Web_Runtime/QuickStart.xhtml
[9]: https://store.ovi.com/