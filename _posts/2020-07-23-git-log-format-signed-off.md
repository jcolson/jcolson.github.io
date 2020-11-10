---
layout: post
categories: [blog, tech]
title: A "pretty" custom git log format that includes info on gpg and "signed-off-by"
author:
  display_name: Jay
date: 'Jul 23, 2020'
---

[![git log format](/assets/git-log-format.png "Example git log output")](/assets/git-log-format.png)

I like to be able to see 'Signed-off-by' trailers as well as gpg signatures in my git log output.  I spent a little bit of time and came up with the below alias.

Add it to your `~/.gitconfig` and you'll have the formatted output above for any `git lg` that you run in a
git repo's directory.  The output is:

`tree` `git hash` `when committed` `committer name` `Signed-off-by trailer ...` `gpg trusted/untrusted/not signed/etc` `gpg signature key` `commit message` `refspec(tags/branches/etc)`

```config
[alias]
    lg = log --color --graph --pretty=format:'%Cred%h%Creset %Cgreen(%<(6,trunc)%cr) %C(bold blue)%<(14,trunc)%an %Creset%Cblue%<(3,trunc)%(trailers:key=Signed-off-by,separator=%x2C)%Creset%Cred%Cblue%G?%Cred%<(16,trunc)%GK%Creset %s%C(yellow)%d' --abbrev-commit --branches
```
