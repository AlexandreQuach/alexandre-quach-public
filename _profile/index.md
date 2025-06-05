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
- [{{ item.title | default: item.name | capitalize }}]({{ item.url | relative_url }})
{% endfor %}

---

### Quick Access

- **[Professional Bio]({{ '/profile/bio/' | relative_url }})** - Background and philosophy
- **[Certifications]({{ '/profile/certifications/' | relative_url }})** - 20+ certificates from world-class institutions  
- **[Recommendations]({{ '/profile/recommendations/' | relative_url }})** - 100+ professional testimonials