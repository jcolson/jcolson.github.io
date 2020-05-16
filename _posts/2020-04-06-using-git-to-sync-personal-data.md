---
layout: post
categories: [blog, tech]
title: Using git to synchronize personal data
author:
  display_name: Jay
date: 'Apr 04, 2020'
---
Problem statement: I don’t always work on the same computer.  I have three laptops (one linux, the others macs) and a desktop machine that I bounce between depending on if I’ll be working on the couch in the evening, at a coffee shop with my daughter, in my home office or at my work office.  I need a way to keep those machines in ‘sync’ with different configurations, such as my ssh configs, ssh keys, gnupg keys, vim config, custom shell scripts that I’ve written and use, custom Alfred workflows, etc.

Historically I’ve done this in many ways.  I’ve used iDrive with symlinks.  I’ve used Google Drive in the same manner.  Both are “ok” at doing this, however they are not secure and there gets to be ‘versioning’ issues that you may or may not realize until it’s too late and have multiple versions of scripts that you have no traceability to determine when each change was made (super painful to merge changes).  Google drive may start renaming some of your config files and scripts to not conflict with other changes that you’ve made to those files on other machines.  This is generally due to sync’ing not happening immediately when you make the changes for example.

Enter version control.  Initially I started hosting my own private [git](https://git-scm.com) server and then keeping all of my configs and scripts in that git server and synchronizing to my multiple machines via ‘git push/pull’.  This actually works relatively well, but you must maintain your own git server (for security purposes, you don’t want your secure gpg keys ending up on github for example).

I've found that my most recent encantation of version control and syncing my config files to my multiple working environments has been the best solution to date.  I've started leveraging [Keybase's encrypted git](https://keybase.io/docs/git/index) repositories.  Once you install Keybase, you now have access to create encrypted git repositories that are hosted on keybase's [KBFS](https://keybase.io/docs/kbfs).  You can even use UI's to work with these repositories by using Keybase's `/usr/local/bin/git-remote-keybase` binary (creating a symlink to it under `/Applications/SourceTree.app/Contents/Resources/git_local/bin` on [SourceTree](https://www.sourcetreeapp.com) for example).

Over time I've standardized on keeping a "personal source" directory under my user account (something like `~/src/personal`) in which I keep all personal items that I wish to secure under encrypted source control (`git init ~/src/personal`).  Generally these are directories (such as `~/src/personal/.ssh`, `~/src/personal/.gnupg` or `~/src/personal/bin`) that I then symlink into my current computing environment (`~/.ssh`, `~/.gnupg` or `~/bin` respectively).  That way whenever I commit new changes from remote machines via `git add . && git commit -m "new" && git push` and then complete a `git pull` on my local environment, it is all "up to date".

Every once in a while you'll get revisions that will need to be merged, but it makes it SO much easier (and very well known when it happens) than trying to do the same via a simple file sharing service.

## Uodate
I have sense moved away from keybase and started using a nano instance at AWS (free tier!).  Take a look at [git-remote-gcrypt](https://github.com/spwhitton/git-remote-gcrypt) to encrypt your git repoaitory and push it via rsync to a remote ssh host.
