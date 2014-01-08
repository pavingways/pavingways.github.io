---
layout: post
title:  "@media conference 2006 summary - day 1"
date:   2006-06-26 00:18:40
categories: prev javascript
---
The PavingWays team was in London from June 15th to 16th to attend the [@media conference 2006][1]. @media basically is a web design conference ("Europe's foremost professional web design conference"), so most of the talks and panels were less technical and focussed mainly on design issues. However, some speakers also talked about things like DOM scripting or bug fixing, so there was some technological input as well. 

Since we try to keep the focus on (mobile) devices here, let's look at the things that were said at @media that are relevant to us: <!--more-->

**Keynote: Eric Meyer - On CSS** The conference kicked off with a keynote by Eric Meyer, who is well-kown as one of the founders of the "CSS movement" and since evangelist for CSS. 

He talked about the long development of CSS and about lots of issues that had to be overcome in order to make CSS as successful as it is today. 

Apart from the well known problems we are facing today in everyday development of Websites, such as browser incompatibility and browsers not supporting the standards completely, he pointed out an interesting milestone in the CSS history that was marked by the development of the Internet Explorer 5 on the Mac platform. Tantek Çelik, then employed at Microsoft and nowadays CEO of Technorati, was credited for creating the first browser that was supporting CSS at a level it was useful for Website layouts and it became the first browser that could be used to actually develop and test real things in CSS. Looking at the mobile world we are facing similar problems, but we might already have a decent browser to support our development and testing needs, namely [Opera][2]. Similar to the IE5 back in the days, that was only available on a Mac, the Opera mobile browser is also not available on all mobile devices. Still it runs on all major PC platforms and at least development of mobile web applications can be done very conveniently (using the mobile view in Opera's settings). Also support of the CSS and XHTML standards is and has always been superior in Opera, so compared to the IE 5 from back then we are in an even better position. Too bad only a tiny amount of all phones actually runs Opera also only a small amount (probably) supports the standards. 

Eric Meyer also pointed out that during the last two years CSS (and XHTML) has moved into fields other than the internet, namely it is used in things like the [Mac OS X dashboard widgets][3] (and most other widget engines as well) or even into real desktop applications, such as the [Adium IM client][4], where it is used to create different themes. 

**Dave Shea - Typography on the Web** Dave, the creator of the famous [CSS Zen garden][5], talked about good and bad fonts and especially expressed his resentment against "Comic Sans". This was supported by displaying bad examples of the use of this font in public, such as the use on a Canadian toll station. 
<a title="Dave Shea speaking at atmedia" class="imagelink" href="http://www.pavingways.com/wp-content/uploads/CIMG2697_b.jpg"><img alt="Dave Shea speaking at atmedia" id="image14" src="http://www.pavingways.com/wp-content/uploads/CIMG2697_b.thumbnail.jpg" /></a> Interesting for the mobile field was his remark about fonts and that developers/designers should consider if a font they want to use can be displayed on mobile devices. I personally want to add that it therefore should be made sure there is an appropriate alternative in the CSS definition to fall back to, if a font should not be available on a device (which will be the case many times). Dave also mentioned that the famous Verdana font was originally created to have a crisp looking font in any size, before things like antialiasing and subpixel-rendering were available - things we will probably need to explore in the field of mobile devices. 



**Jeremy Keith - DOM scripting to plug holes in CSS** While not talking about mobile devices at all, Jeremy presented some nice techniques to overcome CSS shortcomings of modern web browsers. One example of this is using multiple background images on DIVs, which can be done with a little JavaScript. I think hacks like this will be important on mobile devices, since browsers in this field are even more constrained than those on desktop PCs. However, if JavaScript will be a practical solution can be doubted, because this is one of the technologies in those browsers that is (probably) least supported. Jeremy also does not miss an opportunity to promote his [Hijax technique][6], which unobtrusively adds AJAX and JavaScript in general to otherwise still functioning websites - a very interesting method in the mobile field, because clients not supporting JavaScript at all can still use the "low-fi" version of the website or application. 

[...this post is continued here][7]

[1]: http://www.vivabit.com/atmedia2006/
[2]: http://www.opera.com/products/mobile/ "Opera mobile"
[3]: http://www.apple.com/macosx/features/dashboard/ "Apple Dashboard Widgets"
[4]: http://www.adiumx.com/ "Adium IM client"
[5]: http://www.csszengarden.com/
[6]: http://domscripting.com/blog/display/41 "Hijax by Jeremy Keith"
[7]: http://www.pavingways.com/atmedia-conference-2006-summary-day-2_15.html