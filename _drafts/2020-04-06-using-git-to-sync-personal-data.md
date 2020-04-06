---
layout: post
categories: [blog, tech]
title: Using git to synchronize personal data
author:
  display_name: Jay
date: 'Apr 04, 2020'
---
Problem statement: I don’t always work on the same computer.  I have three laptops and a desktop machine that I bounce between depending on if I’ll be working on the couch in the evening, at a coffee shop with my daughter, in my home office or at my work office.  I need a way to keep those machines in ‘sync’ with different configurations, such as my ssh configs, keys, gnupg keys, vim config, custom shell scripts that I’ve written and use, custom Alfred workflows, etc.

Historically I’ve done this in many ways.  I’ve used iDrive with symlinks.  I’ve used Google Drive in the same manner.  Both are “ok” at doing this, however they are not secure and there gets to be ‘versioning’ issues that you may or may not realize until it’s too late.  Google drive may start renaming some of your config files and scripts to not conflict with other changes that you’ve made to those files on other machines.  This is generally due to sync’ing not happening immediately when you make the changes for example.

Enter version control.  Initially I started hosting my own private git server and then keeping all of my configs and scripts in that git server and synchronizing to my multiple machines via ‘git push/pull’.  This actually works relatively well, but you must maintain your own git server (for security purposes, you don’t want your secure gpg keys ending up on github for example).