---
layout: post
categories: [blog, tech]
title: Quicklook on Mac OSX Catalina only displays headers for EML (Electronic Mail) files
author:
  display_name: Jay
date: 'Oct 26, 2020'
---

I've noticed that many EML files in OSX Catalina don't preview properly via Quicklook from the Finder, but instead only shows the headers and no content.  I've found that the EML files that Outlook (Exchange) creates on the Mac don't have unix linefeeds, which causes the preview to not work properly.

Easy fix is to run [dos2unix](https://waterlan.home.xs4all.nl/dos2unix.html){:target="_blank"} on the EML files, after fixing the carriage return and linefeeds, OSX Quicklook works like a champ!
