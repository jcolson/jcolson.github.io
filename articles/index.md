---
layout: default
published: true
title: All Articles
author: jcolson
date: 'Oct 28, 2021'
---

<h2 id="blog-entries">{{ page.title | escape }}</h2>
<ul class="post-list">
    {%- for post in site.posts -%}
        <li>
            {%- assign date_format = "%b %-d, %Y" -%}
            {{ post.date | date: date_format }}
            <a href="{{ post.url }}">{{ post.title | escape }}</a> - 
                {% if post %}
                  {% assign categories = post.categories %}
                {% else %}
                  {% assign categories = page.categories %}
                {% endif %}
                (
                {% for category in categories %}
                <a href="{{site.baseurl}}/category/{{category|slugize}}">{{category}}</a>
                {% unless forloop.last %}&nbsp;/&nbsp;{% endunless %}
                {% endfor %}
                )
            {%- if site.show_excerpts -%}
                {{ post.excerpt }}
            {%- endif -%}
        </li>
    {%- endfor -%}
</ul>    
<hr/>

