---
layout: post
title:  "BlackBerry Browser Can Accesses GPS Location"
date:   2008-07-20 14:24:22
categories: imported
---
We've been monitoring the mobile browser market pretty closely during the last couple of years, especially in regard to Mobile Ajax and how it could help to create new and powerful web applications for mobile phones. Mobile Ajax is a lot of things and it always depends on the individual's definition what is really meant, but one thing that is a pretty common aspect of Mobile Ajax is the ability that it might at some point be used as a gateway or API to connect the web browser on the phone with the device hardware, such as the GPS system thereby giving access to the device's position within a mobile web application. These things are in development at every mobile browser vendor today, that much is for sure, but what's more interesting, because it's hardly known, is that <span class="Apple-style-span" style="font-weight: bold">this functionality already exists</span> on some BlackBerry Devices, namely those of the [8800 series][1]! Now maybe we've been too busy developing [our stuff][2] lately to notice, maybe this time nobody really made a big buzz out of this, but personally I feel bad that I missed this until now, because I feel this might have a tremendous impact on mobile web application development: <!--more-->As TonyB writes in an article called "

[Blackberry Browser & GPS][3]" on [his blog][1], certain BlackBerries provide a JavaScript object within the web browser that allows the web application to access latitude and longitude from the GPS module on the phone. Security is taken care of by asking the user to allow (or not) the application access to the physical location of the device in a Yes/No alert() window. Simple and, if it works, tremendously powerful! Too bad BlackBerry devices are known for not having the world's best web browser on them (to put it politely) - developer documentation seems not to be of much help either. But as r[esults from our ever-running Frost library test][4] show, there might be a BlackBerry device, the BlackBerry 8200 Cingular US (VendorID = 102), that already features support for Ajax. This could be a faked user agent string though, so if you have a 8820 and want to test it, just go to [http://pwmwa.com/frost][5] - or we can test it ourselves as soon as you send us over a BlackBerry 8200 ;) As we develop [Groupile][2], we will make sure to include this as soon as possible too. Please read [all details and the code listing in TonyB's article][3] - thanks for blogging about this!

[1]: http://www.tonybunce.com/default.aspx
[2]: http://groupile.com
[3]: http://www.tonybunce.com/2008/05/08/BlackberryBrowserAmpGPS.aspx
[4]: http://pwmwa.com/frost/results.php
[5]: http://pwmwa.com/frost/