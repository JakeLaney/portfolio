---
layout: page
permalink: /github/
title: github
description:
nav: false
nav_order: 3
---

<!-- Github -->
<!-- Include the library. -->
<script
  src="https://unpkg.com/github-calendar@latest/dist/github-calendar.min.js">
</script>

<!-- Optionally, include the theme (if you don't want to struggle to write the CSS) -->
<link
  rel="stylesheet"
  href="https://unpkg.com/github-calendar@latest/dist/github-calendar-responsive.css"
/>

<!-- Prepare a container for your calendar. -->
<div class="calendar">
  <!-- Loading stuff -->
  Loading the data just for you.
</div>

<script>
  GitHubCalendar(".calendar", "jakelaney");

  // or enable responsive functionality:
  GitHubCalendar(".calendar", "jakelaney", { responsive: true });

  // Use a proxy
  GitHubCalendar(".calendar", "jakelaney", {
    proxy (username) {
      return fetch(`https://your-proxy.com/github?user=${username}`)
    }
  }).then(r => r.text())
</script>

<br />

#### Public Repositories

<p>Most of my commits are in private repos. These are primarily from my undergrad days.</p>

{% if site.data.repositories.github_repos %}

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% include repository/repo.html repository=repo %}
  {% endfor %}
</div>
{% endif %}
