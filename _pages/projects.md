---
layout: page
title: Projects
permalink: /projects/
description: since 2020
nav: true
nav_order: 1
# display_categories: Research
# display_categories: [work, fun]
horizontal: false
---

<!-- pages/projects.md -->
<div class="projects">
  {%- if site.enable_project_categories and page.display_categories %}
    <!-- Display categorized projects -->
    {%- for category in page.display_categories %}
      <h2 class="category">{{ category }}</h2>
      {%- assign categorized_projects = site.projects | where: "category", category -%}
      {%- assign sorted_projects = categorized_projects | sort: "importance" -%}
      
      <!-- Use CSS Grid for layout -->
      <div class="grid">
        {%- for project in sorted_projects -%}
          <div class="project-card">
            {% include projects.html %}
          </div>
        {%- endfor %}
      </div>
    {%- endfor %}
  {%- else -%}
    <!-- Display projects without categories -->
    {%- assign sorted_projects = site.projects | sort: "importance" -%}
    <div class="grid">
      {%- for project in sorted_projects -%}
        <div class="project-card">
          {% include projects.html %}
        </div>
      {%- endfor %}
    </div>
  {%- endif -%}
</div>
