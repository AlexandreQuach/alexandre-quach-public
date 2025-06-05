---
layout: default
title: "Profile"
permalink: /profile/
---

# Professional Profile

Detailed background, certifications, and professional recommendations.

---

## Sections

{% for item in site.profile %}
  {% unless item.path contains "index.md" %}
- [{{ item.title | default: item.name | capitalize }}]({{ item.url | relative_url }})
  {% endunless %}
{% endfor %}
---

### Quick Access

- **[Professional Bio]({{ '/profile/bio/' | relative_url }})** - Background and philosophy
- **[Certifications]({{ '/profile/certifications/' | relative_url }})** - Certificates from recognized institutions  
- **[Recommendations]({{ '/profile/recommendations/' | relative_url }})** - 100+ professional testimonials
