{% extends '_layout.swig' %}
{% import '_macro/post-collapse.swig' as post_template %}
{% import '_macro/sidebar.swig' as sidebar_template %}

{% block title %}{{ __('title.games') }}: {{ page.games }} | {{ title }}{% endblock %}

{% block content %}

  {#################}
  {### GAMES BLOCK ###}
  {#################}
  <div class="post-block games">

    <div id="posts" class="posts-collapse">
      <div class="collection-title">
        <{% if theme.seo %}h2{% else %}h1{% endif %}>{#
        #}{{ page.games }}{#
        #}<small>{{  __('title.games')  }}</small>
        </{% if theme.seo %}h2{% else %}h1{% endif %}>
      </div>

      {% for post in page.posts %}
        {{ post_template.render(post) }}
      {% endfor %}
    </div>

  </div>
  {#####################}
  {### END GAMES BLOCK ###}
  {#####################}

  {% include '_partials/pagination.swig' %}
{% endblock %}

{% block sidebar %}
  {{ sidebar_template.render(false) }}
{% endblock %}
