---
layout: default
---
{%- assign date_format = "%b %-d, %Y" -%}
# {{ page.title | escape }} - {{ page.date | date: date_format }}
        {{ content }}