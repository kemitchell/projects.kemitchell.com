---
layout: default
---

<ul class="projects">
  {% assign projects = site.projects | sort: "title" %}
  {% for project in projects %}
  <li>
    <a href="{{project.homepage}}">{{project.title}}</a>
    <p class="description">{{project.description}}</p>
  </li>
  {% endfor %}
</ul>
