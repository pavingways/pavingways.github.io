---
layout: post
title:  "Mobile Apps Building and Deployments at jsugfra[1]"
date:   2011-03-30 14:47:24
categories: imported
---
This Monday we held the second iteration of our JavaScript User Group here in Frankfurt: [#jsugfra][1] (thanks [Björn][2]!) There were only around 12 attendees there, although signups ranged around 20 - so shame on you if you didn't show up! ;) But it's your loss, because aside from [Evgenij][3]'s [talk][4] you missed my "little" (1hr) hands-on session showing how you can deploy the same JS-based app - build upon [Unify][5] - to several platforms, namely those: 

*   the browser,

*   homescreen (appcache on iOS) - this is different from the browser,

*   iOS (iPhone and iPad with PhoneGap),

*   Android (PhoneGap too),

*   BlackBerry PlayBook (WebWorks on TabletOS),

*   Samsung Bada (JS-App-Package),

*   WAC (sort of),

*   and Samsung Internet@TV

 Unify makes this easy in many regards (JS-build process, appcache context detection etc.). My goal was to show the difficulties and differences in SDKs and build/deployment tools - this became pretty clear I think, especially talking about the difficulties. The main message I wanted to bring across this evening was: 

**If you want people to write apps for your platform, then given them some decent development tools!** This means preferably CLI build/deploy tools (helps with automating builds) and a well working Simulator/Emulator plus simple device deployments. If you consider these points and look at the app numbers in different stores you see what I mean: 

*   Apple got this one right (Xcode and iOS Simulator just work, simple device deployments),

*   Android is behind in this (Eclipse and especially the Emulator is unusably slow, device deployment easy),

*   Blackberry is not bad (CLI tools, fast Emulator, simple deployment to devices),

*   Samsung does a separate thing for different platforms and both are Eclipse-based (only Windows! WTF?, Emulators work well tho)

*   WAC uses the Android Emulator (cf. above) with a Widget Runtime on it and an Eclipse-based SDK (translation: slow)

 Bottom line is: Many Edit->Build->Deployment chains are just so unbearably slow and/or unusable that it takes all the fun out of coding for these platforms. If you add the Appstore(tm)-submission overhead to the calculation, pure development work becomes a much smaller part in the total effort. 

[Sebastian][6] also wrote [in detail about the JSUG meeting itself][7] - thanks for that! Looking forward to jsugfra[2]

[1]: http://twitter.com/#!/search/%23jsugfra
[2]: http://twitter.com/bjoernwibben
[3]: http://twitter.com/EugeneTerehov
[4]: http://bit.ly/hstyMP
[5]: http://unify.github.com/unify/
[6]: http://twitter.com/fastner
[7]: http://tumblr.com/x4g1x6el9f