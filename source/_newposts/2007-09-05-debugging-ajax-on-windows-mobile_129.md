---
layout: post
title:  "Debugging Ajax on Windows Mobile"
date:   2007-09-05 09:09:38
categories: imported
---
I just found an [interesting article about Ajax development for Windows Mobile][1]. It looks like the Microsoft crowd is really into Ajax on their mobile platform, which makes sense...after all makeing a platform appealing to developers is a good thing for the platform. The approach is however different from ours - Microsofties (can you call them like this?) tend to rely on their own tools, namely ASP.net, not open source based tools and libraries. The article mentions a nice hint for debugging directly on the device: turning on the display of script errors in IE mobile. This is achieved by editing a registry entry, which can be done e.g. with the [PHM Registry Editor, a freeware tool][2]. The registry key to change should be this: *HKCU\Software\Microsoft\Internet Explorer\Main* There you need to add a DWORD value called *ShowScriptErrors *and set its value to 1. The Article also describes how to enable cross-site access for XMLHttpRequest, which might be useful for development purposes, not so much for end-user apps. And there's also a workaround for a JSON relates quirk in IE mobile, which does not allow cross-site JSON scripts to be executed if the browser is in "One Column" view mode - I decided not to think about the "why ?" in this case, probably it's a weird bug. So make sure you check out [the article][1] if you're interested!

[1]: http://www.pluralsight.com/blogs/jimw/archive/2007/08/29/48322.aspx
[2]: http://www.freewareppc.com/utilities/phmregistryeditor.shtml