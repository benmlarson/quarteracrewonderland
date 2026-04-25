---
layout: page
title: Categories
permalink: /categories/
---

Explore posts by topic. Whether you're looking for seasonal planting advice, perennial recommendations, or honest tool reviews, you'll find it organized here.

{% assign categories_list = site.categories | sort %}
{% for category in categories_list %}
<h3 id="{{ category[0] | replace: ' ', '-' }}">{{ category[0] }}</h3>
<ul>
{% for post in category[1] %}
<li><a href="{{ post.url | relative_url }}">{{ post.title }}</a> — {{ post.date | date_to_string }}</li>
{% endfor %}
</ul>
{% endfor %}
