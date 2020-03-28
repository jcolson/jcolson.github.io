---
layout: default
---

# {{ page.title | escape }}
    
    <ul class="post-list">
        {%- for post in site.categories[page.tag] -%}
            <li>
                {%- assign date_format = "%b %-d, %Y" -%}
                {{ post.date | date: date_format }}
                <a href="{{ post.url }}">{{ post.title | escape }}</a>
                {%- if site.show_excerpts -%}
                    {{ post.excerpt }}
                {%- endif -%}
            </li>
        {%- endfor -%}
    </ul>    
