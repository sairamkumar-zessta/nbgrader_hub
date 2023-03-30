{%- extends 'base.tpl' -%}
{%- block head -%}
<style>
     div.dataTables_wrapper div.dataTables_filter {
        text-align: left !important;
    }

    .head-title {
    font-family: 'Poppins';
    font-style: normal;
    font-weight: 600;
    font-size: 21px;
    color: #000000;
  }
</style>
{%- endblock -%}
{%- block title -%}
<p class="head-title">Manage Students</p>
{%- endblock -%}

{%- block sidebar -%}
<li role="presentation"><a href="{{ base_url }}/formgrader/manage_assignments">Assignments</a></li>
<li role="presentation"><a href="{{ base_url }}/formgrader/gradebook">Manual Grading</a></li>
{%- endblock -%}
