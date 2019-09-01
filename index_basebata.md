---
layout: default
title: Home
---

<h1>{{ "Hello World!" | downcase }}</h1>

<h1> Category List </h1>

|バッジ表|7/19|7/20|7/21|
|nakahori|![](https://img.shields.io/badge/7/19-Thor-red.svg)|![](https://img.shields.io/badge/7/19-Thor-red.svg)|![](https://img.shields.io/badge/7/19-Thor-red.svg)|
|yuki|![](https://img.shields.io/badge/7/19-Thor-red.svg)|![](https://img.shields.io/badge/7/19-Thor-red.svg)|![](https://img.shields.io/badge/7/19-Thor-red.svg)|


{% for category in site.categories %}
<h3>{{ category[0] }}</h3>
<ul>
  {% for post in category[1] %}
  <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>
{% endfor %}
  

