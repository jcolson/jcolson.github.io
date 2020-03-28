---
layout: default
---
{%- assign date_format = "%b %-d, %Y" -%}

<h1> {{ page.title | escape }} - {{ page.date | date: date_format }} </h1>

{{ content }}

<!-- <h2> <a href="../..">Back</a> </h2> -->