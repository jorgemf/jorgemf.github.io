---
layout: mylayout
permalink: /categories/
---

{% for category in site.categories %}
{% capture category_name %}{{ category | first }}{% endcapture %}
### {{ category_name }}

{% assign sorted_posts = site.categories[category_name]  | sort: date | reverse %}
{% for post in sorted_posts %}
**[{{ post.title }}]({{ post.url }})**      
<small>{% if post.github %}[GitHub]({{ post.github }}) | {% endif %}{% if post.medium %}[Medium]({{ post.medium }}) | {% endif %}{{ post.date | date: "%d %B %Y" }}{% if post.categories %}<i>{% for category in post.categories %} | {{ category }} {% endfor %}</i>{% endif %}</small>
{{ post.summary }}

{% endfor %}
{% endfor %}
