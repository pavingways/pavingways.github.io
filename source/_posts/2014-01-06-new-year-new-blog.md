---
layout: post
title: New Year, New Blog
date: 2014-01-06
published: true
categories: 
- internal
tags: [jekyll, octopress, disqus, import, wordpress, ruby, cloudflare]
comments: true
author: rocco
---
Happy 2014 and welcome to our new blog!

It has been very quiet around here for a while - **over two years** have passed since our last blog entry.
Now we're redefining, tightening and updating PavingWays and we made some changes to our blog too.

## New Blog

We transferred the old pavingways.com from a self-hosted and heavily modified WordPress installation to a [Jekyll][1]/[Octopress][2] blog on [GitHub Pages][3].
The page is additionally delivered through [CloudFlare][4] as we had CF set up before and it had proven to be reliable and fast.

The whole migration process went relatively smoothly however I had to make some adjustments here and there.

### Migrate old WordPress Posts to Markdown

Before we settled with [Octopress][2] I tried [Ghost][7] and [Jekyll][1] directly, so it was clear I would need to have our old posts as Markdown files or HTML if everything else would fail.

So I wrote a PHP script that exported all of our old WordPress posts to Markdown files using an old PHP class called [Markdownify][5]. 
Trouble was that this class needed way too many adjustments and I never was satisfied with the results, so I discarded wanting to have ALL posts in Markdown and decided to go with the [Jekyll importer][6] which produces HTML files. 
The process looked simple and roughly goes like this:

- export a WXR file from your WordPress "Tools" section
- follow a few simple steps on the [Jekyll importer page][6]
- have your old blog posts in _posts (as .html files)

Guess what ... this did not work and first I got this:

    $ jekyll import wordpress --source pavingways.wordpress.2014-01-05.xml
    
    Could not require 'htmlentities', so the :clean_entities option is now disabled.
    error: LoadError: cannot load such file -- mysql2. Use --trace to view backtrace

This is caused by some missing gems and you should "gem install" `htmlentities`, `sequel`, `mysql` and `mysql2` just to be sure.

Some more playing around with this revealed that apparently the command line suggested on the [Jekyll importer page][6] is/was simply wrong [see my bug report][14]:
The importer consists of several sub-importers for various systems and for wordpress there are two - one for self-hosted blogs and one for blogs on wordpress.com.

I had no local DB of my old blog at hand - unfortunately the wordpress importer requires one in contrast to above command line example. That was initially not clear to me and I already had my WXR file ...  
And so I went with the `wordpressdotcom` importer, also because I found a [blog post][8] on the matter and tried another command line (also contained in the [Jekyll importer docs][13]) which works:

    $ruby -rubygems -e 'require "jekyll-import"; JekyllImport::Importers::WordpressDotCom.run({ "source" => "pavingways.wordpress.2014-01-05.xml" })'

Basically I could also have done this and had saved some time, oh well:

    $ jekyll import wordpressdotcom --source pavingways.wordpress.2014-01-05.xml

Now I had all my files in __posts_ as I wanted. My remaining issues with the wordpressdotcom importer were as follows:

- filenames did not match my old URL scheme `/{post_name}_{ID}.html` .
- files do not contain a `date` field in their head section
- files do not contain a `comments` field in their head section
- HTML in WordPress is apparently outputted using PHP's [nl2br()][9] function, so the HTML files did not contain the necessary `<br>`s

In my first stab at Ruby source code ever since I read [this Rails book][10] in 2005 I changed the jekyll-import Gem (the file is called `wordpressdotcom.rb`) so it did all of the above and finally I was happy with my old post files.

Some changes to the default Octopress theme and (S)CSS I had a working site and especially all of our old blog posts on GitHub.

### Hosted Comments and Migration

The same WXR file I used for importing our old post can be used to import all comments to [Disqus][11]. Details see [this blog post][8] again.
The import worked alright, however I did not see any comments in the Disqus box below our posts.

Apparently Disqus and CloudFlare don't just work together as planned and so I followed [this post][12] and It worked - unfortunately only partly...

As it turns out I had to do a _domain migration_ in Disqus (Discussions -> Tools) in order to see all my old comments. 
Strangely this required me to migrate from my (unchanged) domain `pavingways.com` to `pavingways.github.io` so they now appear in Disqus like this:

    http://pavingways.github.io/new-year-new-blog.html

I had no time digging deeper but apparetly disqus realizes that my page is hosted on GitHub.
Finally all comments show up and we have a working blog again. 

Octopress' rake commands make it now simple and easy to write/debug posts and deploy them to GitHub.

**Happy New Year!**


[1]: http://jekyllrb.com/
[2]: http://octopress.org/
[3]: http://pages.github.com/
[4]: https://www.cloudflare.com/
[5]: http://milianw.de/projects/markdownify/
[6]: http://import.jekyllrb.com/
[7]: https://ghost.org/
[8]: http://hadihariri.com/2013/12/24/migrating-from-wordpress-to-jekyll/
[9]: http://php.net/manual/en/function.nl2br.php
[10]: http://pragprog.com/book/rails1/agile-web-development-with-rails
[11]: http://disqus.com/
[12]: http://www.elizaibeth.com/disqus-comments-not-showing-correctly/
[13]: http://import.jekyllrb.com/docs/wordpressdotcom/
[14]: https://github.com/jekyll/jekyll-import/issues/119