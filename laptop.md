---
layout: default
title: Laptop
permalink: /laptop
---
<div id="home">
  <table class="writing"><tbody>
    {% for post in site.posts %}
      <tr>
        <td style="width:6em">{{ post.date | date_to_string }}</td>
        <td><span><a href="{{ post.url }}">{{ post.title }}</a></span></td>
      </tr>
    {% endfor %}
  </tbody></table>
</div>