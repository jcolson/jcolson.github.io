---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
title: Home
author:
  display_name: Jay
date: 'Oct 31, 2019 20:58:26 AM GMT+1'
---
{%- assign date_format = "%b %-d, %Y" -%}
<h1><a href="{{ site.posts.first.url }}">{{ site.posts.first.title }}</a></h1>
<h4>{{ site.posts.first.date | date: date_format }}</h4>
{{ site.posts.first.content }}

[More blog posts](/category/blog)