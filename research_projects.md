---
layout: mylayout
title: Research Projects
#navigation_weight: 
---

<small><em>Sorted by date, you can also browse them by [tags]({{ site.baseurl }}/categories)</em></small>

{% assign sorted_posts = site.posts | sort: date | reverse %}
{% for post in sorted_posts %}
{% assign currentDate = post.date | date: "%Y" %}
{% if currentDate != myDate %}
### {{ currentDate }}
{% assign myDate = currentDate %}
{% endif %}

**[{{ post.title }}]({{ post.url }})**      
<small>{% if post.github %}[GitHub]({{ post.github }}) | {% endif %}{% if post.medium %}[Medium]({{ post.medium }}) | {% endif %}{{ post.date | date: "%d %B %Y" }}{% if post.categories %}<i>{% for category in post.categories %} | {{ category }} {% endfor %}</i>{% endif %}</small>  
{{ post.summary }}

{% endfor %}

### Other projects

**[TensoPort template](https://github.com/jorgemf/tensorport-template)**  
Template to train TensorFlow models into TensorPort