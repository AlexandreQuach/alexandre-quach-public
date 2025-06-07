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
  {% unless item.path contains "index.md" %}
- [{{ item.title | default: item.name | capitalize }}]({{ item.url | relative_url }})
  {% endunless %}
{% endfor %}

---

### Core Frameworks

**ECC Method** (Engineering Corporate Collectives) - A systematic approach to designing and optimizing collective intelligence systems within organizations through silo elimination and transversal leadership development.

**OpenSeriousGame Movement** - A viral transformation framework for open-source knowledge transmission through serious games and systematic community building. Demonstrates how minimal resources can create exponential learning impact through viral transformation principles.

**Compound Thinking Systems** - Approaches to exponential improvement through connection density and multi-variable reinforcement loops where capabilities build upon each other.

**Human-AI Collaboration Architectures** - Frameworks for augmented collective intelligence and supermind development, including cogeneration and solution gatling methodologies.

**Confidence Level Variations Method** - Systematic approach to extending action ranges through marginal risk analysis and strategic confidence building.

**Knowledge Graph Learning** - Methodologies for developing connection density over information accumulation, enabling accelerated learning and enhanced reasoning capabilities.

---

### Implementation Focus

These frameworks emphasize:
- **Systematic approaches** over ad-hoc solutions
- **Collective intelligence** over individual optimization  
- **Viral transformation** over linear scaling
- **Evidence-based methods** with proven results
- **AI-human collaboration** for augmented capabilities

*Full documentation and additional frameworks continuously evolving.*