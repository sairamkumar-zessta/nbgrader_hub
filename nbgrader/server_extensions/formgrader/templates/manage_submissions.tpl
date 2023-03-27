{%- extends 'base.tpl' -%}

{%- block head -%}
<script>
  var assignment_id = "{{ assignment_id }}";
</script>

<script src="{{ base_url }}/formgrader/static/js/manage_submissions.js"></script>
<style>
  .arrange-btn{
    font-family: 'Poppins';
		font-style: normal;
		font-weight: 600;
		font-size: 16px;
		text-align: center;
		border-radius: 21px;
		background: #5FBEF0;
		color: #fff;
		padding: 1rem 1.6rem;
		border: none;
  }
  .head-title {
    font-family: 'Poppins';
    font-style: normal;
    font-weight: 600;
    font-size: 21px;
    color: #000000;
  }

  div.dataTables_wrapper div.dataTables_filter {
    text-align: left !important;
  }

  .head-arrange {
		margin-left: auto;
	}

	.head-arrange button {
		margin-right: 2rem;
	}

  .bg-model {
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		z-index: 1;
		background-color: rgba(0, 0, 0, .2);
	}


	.instructions-model {
		background: #FFFFFF;
		box-shadow: 0px 0.2rem 1.3rem rgba(170, 170, 170, 0.27);
		border-radius: 16px;
		position: absolute;
		transform: translate(-50%, -50%);
		width: 808px;
		height: 200px;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		animation: animatemodal .3s;
	}

	@keyframes animatemodal {
		0% {
			top: -30rem;
			opacity: 0;
		}

		100% {
			top: -50%;
			opacity: 1;
		}
	}


	.instructions-model-top-first {
		display: flex;
		justify-content: space-between;
		align-items: center;
		padding: 0.5rem 2rem;
		background: #D6F0FF;
		backdrop-filter: blur(15px);
		border-radius: 15px 15px 0px 0px;
	}

	.instructions-title {
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 500;
		font-size: 16px;
		line-height: 24px;
		color: #006BB6;
	}

	#instructionsSubmissionCancel {
		font-size: 2rem;
		text-align: center;
		color: #006BB6;
		font-weight: 600;
		cursor: pointer;
		height: 1rem;
		width: 1rem;
	}
</style>
{%- endblock head -%}



{%- block title -%}
<p class="head-title">Manage Submissions</p>
<div class="head-arrange">
	<button id="instructionsButtonNext" class="arrange-btn">Instructions</button>
</div>
<div class="bg-model" id="instructionsSubmissionModal">
  <div class="instructions-model">
    <div>
      <div class="instructions-model-top-first">
        <span class="instructions-title">Instructions</span>
        <div>
          <span id="instructionsSubmissionCancel">&times;</span>
        </div>
      </div>
    </div>
    <div id="collapseOne" class="panel-collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        <p>
          <b>Note:</b> Here you can autograde individual students' submissions by
          clicking on the autograde icons below. If you want to autograde
          all submissions at once, you will need to do this via the
          <a target="_blank" href="{{ base_url }}/terminals/1">command line</a>:
        </p>
        <p>
        <pre>
cd "{{ course_dir }}"
nbgrader autograde "{{ assignment_id }}"</pre>
        </p>
      </div>
    </div>
  </div>
</div>
{%- endblock -%}

{%- block sidebar -%}
<li role="presentation" class="active"><a href="{{ base_url }}/formgrader/manage_assignments">Assignments</a></li>
<li role="presentation"><a href="{{ base_url }}/formgrader/gradebook">Manual Grading</a></li>
{%- endblock -%}

{%- block breadcrumbs -%}
<ol class="breadcrumb">
  <li><a href="{{ base_url }}/formgrader/manage_assignments">Assignments</a></li>
  <li class="active">{{ assignment_id }}</li>
</ol>
{%- endblock -%}

{%- block messages -%}
{%- endblock -%}

{%- block table_header -%}
<tr>
  <th>Student Name</th>
  <th class="text-center">Student ID</th>
  <th class="text-center">Timestamp</th>
  <th class="text-center">Status</th>
  <th class="text-center">Score</th>
  <th class="text-center no-sort">Autograde</th>
  <th class="text-center no-sort">Generate Feedback</th>
  <th class="text-center no-sort">Release Feedback</th>
</tr>
{%- endblock -%}

{%- block table_body -%}
<tr>
  <td>Loading, please wait...</td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
</tr>
{%- endblock -%}
{% block script%}
<script>
  $('#instructionsSubmissionCancel').click(()=>{
    $('#instructionsSubmissionModal').hide();
  });
  $('#instructionsButtonNext').click(()=>{
    $('#instructionsSubmissionModal').show();
  });
</script>
{%- endblock -%}