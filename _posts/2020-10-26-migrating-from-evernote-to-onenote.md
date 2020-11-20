---
layout: post
categories: [blog, tech]
title: Migrating from Evernote to OneNote
author:
  display_name: Jay
date: 'Oct 26, 2020'
---

I decided to migrate from Evernote to Microsoft's OneNote.  I definitely underestimated the amount of effort that would be required in this endeavor!  Microsoft actually has an unsupported (and beta) app that will do the migration, and it ALMOST works.  Here are the tricks.

You can't use the latest Evernote for the export.  I got lucky with a Google search for 'download older version of Evernote', which got me to a link that allowed me to download this version: [EvernoteLegacy_RELEASE_7.14.1_458325.zip](https://help.evernote.com/hc/en-us/articles/360052560314-Install-an-older-version-of-Evernote){:target="_blank"}.  Hopefully that link will still work for you as well.

Next, select all the notes that you wish to export and then choose File->Export Notes.  Once you have the export file, you still need to do ONE more thing in order to ensure that titles and creation dates get imported successfully; just change ```YourExportedNotes.enex``` to whatever your file name was from the Evernote export.

```sh
cat YourExportedNotes.enex | sed 's/<!\[CDATA\[<!DOC/<!\[CDATA\[<?xml version="1.0" encoding="UTF-8"?><!DOC/g' > YourExportedNotes.fixed.enex
```

Now the final file (```YourExportedNotes.fixed.enex```) should be importable using [Microsoft's import tool, available here](https://www.onenote.com/import-evernote-to-onenote){:target="_blank"}.

Good luck on your migration!
