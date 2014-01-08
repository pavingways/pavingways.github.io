---
layout: post
title:  "Mobile Widgets: the ubiquitous mobile web"
date:   2007-05-06 14:33:39
categories: prev javascript
---
<p>
      <img src="http://www.pavingways.com/wp-content/uploads/nokia_widgets.JPG" alt="Nokia Mobile Widgets" title="Nokia Mobile Widgets" style="margin: 0pt 0pt 10px 10px; float: right" />On <a href="http://www.nokia.com/A4136001?newsid=1118790" title="Nokia Press Release about Mobile Widgets"><span>April 16, 2007</span> Nokia announced</a> their S60 platform would support widgets in subsequent releases. This means, using their WebKit based browser under the hood, newer phones (S60 3rd ed. with Feature Pack 2) will have support for those small applications, mostly serving not more than a single purpose (e.g. show the weather or an RSS feed) that are well known on the desktop since a couple of years now.
    </p>
    
    <p>
      <em>In preparation to <a href="http://2007.xtech.org/public/schedule/detail/150">my talk at this year's XTech conference</a> I want to point out some important things related to this announcement. I think widgets on (mobile) devices are a major step in the right direction and I feel the mobile web can finally get the boost it so desperately was waiting for since a couple of years now. "The Ubiquitous Web" is this year's XTech topic - I feel the mobile web will become ubiquitous pretty soon...This article can be seen as a primer to my talk at XTech: <a href="http://2007.xtech.org/public/schedule/detail/150">Ajax on mobile devices - making mobile web apps ubiquitous</a>.</em><em> </em>
    </p>
    
    <p>
      <!--more-->The Nokia announcement is nothing new, but still it is an important announcement, because it is yet another vendor of a phone browser to announce not only support for Ajax but also for widgets. In the case of Nokia it's even a phone and platform manufacturer.
    </p>
    
    <p>
      <img src="http://www.pavingways.com/wp-content/uploads/opera_platform_early_screen.thumbnail.jpg" alt="Opera Platform Early Screenshot" title="Opera Platform" style="margin: 0pt 0pt 10px 10px; float: right" />Other browser vendors have done this before. The first one to implement a working mobile widget engine was <a href="http://www.opera.com/">Opera</a> back in October 2004, it was called <a href="http://www.opera.com/products/mobile/platform/">Opera Platform</a>. While the Opera Platform was hard to install and more or less a proof-of-concept approach, Opera 9 for mobile, the browser that is soon to be released, also features widgets and comes pre-installed in many devices. New versions of the <a href="http://www.access-company.com/products/netfrontmobile/browser/index.html">Netfront browser</a> and the <a href="http://www.openwave.com/us/products/handset_products/mobile_widgets/">OpenWave MIDAS project</a> are announced to feature support not only for Ajax, but also for widgets. This shows that all major browser vendors in the mobile area have (finally) realized the importance of Ajax and widget support (hint: critical mass).
    </p>
    
    <p>
      What about Apple's iPhone? Nobody has really seen it yet, but as it looks, it will not only feature Ajax powered widgets, but widgets will be the iPhone's main (only?) way to add applications to the device. The iPhone probably also can be seen as one of the driving forces behind the motivation in browser vendor's announcements and developments.
    </p>
    
    <p>
      <strong>What is the technical background?</strong> Widgets are little applications typically created using existing web technologies, such as XHTML, CSS and JavaScript (yes, this means Ajax to a big extend). Nokia calls their widget environment "Web Run-Time" and, as already mentioned, this environment essentially means the already existing web browser on the device. However in contrast to the browser a widget is not loaded by typing in a URL into the browser, but it is a web application that is installed directly on the phone, so all the images, CSS files and JavaScript code is already on the phone and can therefore be much bigger than if it would have to be loaded through a 3G or GPRS network connection.
    </p>
    
    <p>
      Another very important aspect of the Web Run-Time environment and basically any widget environment is that the run-time environment can do things a regular web browser was not able to do before: widgets can get access to the device API and consequently can interface to the phone hardware such as GPS or camera and other applications like the calendar or contact manager.
    </p>
    
    <p>
      <strong>Why is this important?</strong> XHTML/CSS/JavaScript and Ajax are well known standards and technologies amongst a large web developer community. Those technologies are powering the most successful applications and services on the web. For those services it was hard to implement mobile verisons of their services for mobile devices. The support for web-standards based widgets on mobile phones is a huge step forward to a world where every web developer can be able to create an application for a mobile phone and where those web applications that are successful on the desktop can also be successful on mobile devices.
    </p>
    
    <p>
      Furthermore widgets can do more by accessing a device's hardware and applications and are therefore way more valuable to the user than a regular web application. Imagine a widget that can be used to make a picture and store it to your flickr account: it would start your camera, grab the picture you take, add location tags automatically (if your phone has GPS) and asynchronously upload the picture to flickr while you're already doing something else like reading the latest RSS feed in your news widget.
    </p>
    
    <p>
      But maybe the most important aspect of this is that the underlying technologies - XHTML/CSS/JS/Ajax - are universally used across all those different widget engines and run-times. The develop-once-deploy-to-many vision appears again... Mobile widgets could emerge as a major player against Java ME applications in many areas. Still it has to be kept in mind that the same way as browser implementations of those technologies differ from one to the other it will be the same with widget engines. It cannot be expected that a widget, once created, will run in different widget engines without modifications or even complete rewriting. Most probably the widget engines will also employ different means to wrap the widget application in a deployable package, using ZIP containers will probably be only one of the methods.
    </p>
    
    <p>
      <strong>What role does Ajax play here?</strong> Ajax will, as well as the other open standards-based technologies, play a major role in the widget creator's toolbox. While XHTML and CSS will handle structure and presentation, JavaScript will act as the business logic layer and Ajax will provide the means to communicate asynchronously with remote servers and web services of different kinds.
    </p>
    
    <p>
      <strong>How this makes the web ubiquitous?</strong> A phone that comes pre-installed with your favorite web applications (read "widgets") needs very little data transmissions to get live data from the web (read "Ajax"). Therefore widgets, powered by Ajax will be able to provide phone users with useful applications, that can connect to web services and other applications on phones of other users. If developing widgets for mobile phones will be as easy as anticipated above, these widgets will be able to do what regular browsers on mobile devices have been trying to achieve in quite some years until now: make people actually use the mobile web! Since the Ajax requests can happen asynchronously and in the background the user of the application doesn't even need to know that the "web" is being accessed right now. The mobile web will become ubiquitous and invisible at the same time - ok, concededly this is a very philosophical view - but maybe not even too far away from the future reality.
    </p>
    
    <p>
      <strong>Further Resources:</strong> <ul>
        <li>
          <a href="http://www.nokia.com/A4136001?newsid=1118790" title="Nokia Press Release about Mobile Widgets">Nokia press release on Widgets support</a>
        </li>
        <li>
          <a href="http://www.s60.com/business/newsevents/audiocast">Audiocast following the Nokia Press release with Tero Ojanperä, CTO, Nokia</a>
        </li>
        <li>
          <a href="http://www.s60.com/business/productinfo/technologyupdate/?action=archiveNews&yid=2007&mid=4&whatshot=1&hotNewsId=346&techup=1">S60.com press release / Technology Update on Nokia Widgets</a>
        </li>
        <li>
          <a href="http://www.allaboutsymbian.com/news/item/5152_S60_Widgets_and_Web_Run-Time.php">S60 Widgets and Web Run-Time announcement on allaboutsymbian.com</a>
        </li>
        <li>
          <span class="topic"></span><a href="http://blogs.s60.com/voiceofs60/2007/04/podcast_20_ganesh_sivaraman_s6.html">Voice of S60 - Podcast #20: Ganesh Sivaraman, S60 Widgets</a>
        </li>
        <li>
          <a href="http://www.gartner.com/DisplayDocument?id=503994">Gartner Group's view on S60 widgets</a>
        </li>
        <li>
          <a href="http://opengardensblog.futuretext.com/archives/2007/04/nokia_s60_widge.html">Ajit's post on the Nokia announcement</a>
        </li>
        <li>
          <a href="http://en.wikipedia.org/wiki/Widget_engine#Mobile_widgets">Mobile Widgets Definition on Wikipedia</a>
        </li>
      </ul>
    </p>