---
layout: post
categories: [blog, tech]
title: Quicklook on Mac OSX Catalina only displays headers for EML (Electronic Mail) files
author:
  display_name: Jay
date: 'Oct 26, 2020'
description: How to solve Mac OSX broken EML Quicklook
---

I've noticed that many EML files in OSX Catalina don't preview properly via Quicklook from the Finder, but instead only shows the headers and no content.  I've found that the EML files that Outlook (Exchange) creates on the Mac don't have unix linefeeds, which causes the preview to not work properly.

Easy fix is to run [dos2unix](https://waterlan.home.xs4all.nl/dos2unix.html){:target="_blank"} on the EML files, which fixes this issue.  After dos2unix fixes the carriage return and linefeeds, OSX Quicklook for those EML files works like a champ!

[![dos2unix workflow]({{ site.baseurl }}{% link /assets/dos2unix_workflow.png %}){:width="400px" style="float: right; margin-left: 1em;"}]({{ site.baseurl }}{% link assets/dos2unix_workflow.png %})

I created a workflow using Automator that kicks off dos2unix for a selected file from the Finder (or any other app that will provide the file chooser to it's service).  This works perfectly for my needs.  If the Quicklook functionality fails, I right click on the file, click on ```Services->dos2unix```!

Happy computing!
