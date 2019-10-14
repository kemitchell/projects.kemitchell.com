---
layout: default
---

<ul class="projects">
  {% assign projects = site.projects | sort: "title" %}
  {% for project in projects %}
  <li>
    <a href="{{project.homepage}}">{{project.title}}</a>
    {% assign tags = project.tags | sort %}
    <!--{% for tag in tags %} {{tag}}{% endfor %}-->
  </li>
  {% endfor %}
</ul>
