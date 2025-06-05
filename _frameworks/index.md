---
layout: default
title: "Frameworks"
permalink: /frameworks/
---

# Frameworks & Methodologies

Strategic approaches to collective intelligence and organizational engineering.

---

## Available Frameworks

{% for item in site.frameworks %}
  {% unless item.name == "index" %}
- [{{ item.title | default: item.name | capitalize }}]({{ item.url | relative_url }})
  {% endunless %}
{% endfor %}

---

### Core Framework

**ECC Method** (Engineering Corporate Collectives) - A systematic approach to designing and optimizing collective intelligence systems within organizations.

*Full documentation coming soon.*
