---
layout: default
---

{% for post in site.posts limit: 1 %}
<article>
  <h2>{{ post.title | escape }}</h2>

  <time class="dt-published" datetime="{{ post.date | date_to_xmlschema }}">
    {%- assign date_format = site.minima.date_format | default: "%b %-d, %Y" -%}
    {{ post.date | date: date_format }}
  </time>

  {{ post.content }}
</article>

<nav>
  {% if post.next %}
  <a href="{{post.next.url}}" title="Next: {{post.next.title}}">{{post.next.title}} &larr;</a>
  {% endif %}

  {% if post.previous %}
  <a href="{{post.previous.url}}" title="Previous: {{post.previous.title}}">{{post.previous.title}} &rarr;</a>
  {% endif %}
</nav>

{% endfor %}
