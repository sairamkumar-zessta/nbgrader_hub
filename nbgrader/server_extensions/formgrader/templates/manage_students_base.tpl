{%- extends 'base.tpl' -%}
{%- block title -%}
<p class="head-title">Manage Students</p>
{%- endblock -%}

{%- block sidebar -%}
<li role="presentation"><a href="{{ base_url }}/formgrader/manage_assignments">Assignments</a></li>
<li role="presentation"><a href="{{ base_url }}/formgrader/gradebook">Manual Grading</a></li>
{%- endblock -%}
