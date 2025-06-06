---
layout: default
title: "Profile"
permalink: /profile/
keywords: ["alexandre quach profile", "collective intelligence architect", "executive preparation coach", "komyu founder", "MIT sloan alumni", "organizational transformation expert"]
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
