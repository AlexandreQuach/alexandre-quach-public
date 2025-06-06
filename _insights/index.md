---
layout: default
title: "Insights"
permalink: /insights/
---

# Personal Insights, Strategies & Concepts

Reflections on (self-)leadership, organizational behavior, and collective intelligence.

---

## Available Insights and topics

{% assign sorted_insights = site.insights | sort: 'date' | reverse %}
{% for item in sorted_insights %}
  {% unless item.path contains "index.md" %}
* {{ item.date | date: "%Y-%m-%d" }} - [{{ item.title | default: item.name | capitalize }}]({{ item.url | relative_url }})
  {% endunless %}
{% endfor %}

---
.

*More insights and concepts coming soon.*
