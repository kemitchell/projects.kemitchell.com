---
layout: default
---

<p>In alphabetical order…</p>

<ul class="projects">
  {% assign projects = site.projects | sort: "title" %}
  {% for project in projects %}
  <li>
    <a href="{{project.homepage}}">{{project.title}}</a>
    <p class="description">{{project.description}}</p>
    <ul class="tags">
      {% assign sorted = project.tags | sort %}
      {% for tag in sorted %}
      <li>{{tag}}</li>
      {% endfor %}
    </ul>
  </li>
  {% endfor %}
</ul>
