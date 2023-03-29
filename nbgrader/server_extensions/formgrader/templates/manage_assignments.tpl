{%- extends 'base.tpl' -%}
{%- block head -%}
<script>
	var url_prefix = "{{ url_prefix }}";
</script>
<script src="{{ base_url }}/formgrader/static/js/manage_assignments.js"></script>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Gothic+A1:wght@400;500;600&family=Poppins:wght@400;500;600&family=Roboto:wght@400;500&display=swap');

	.instruction-head {
		font-weight: 600;
		font-family: 'Poppins';
	}

	.panel-body,
	.panel-group {
		background-color: #FFFFFF;
	}

	div.dataTables_wrapper div.dataTables_filter {
    text-align: left !important;
	}

	.panel-default>.panel-heading {
		background-color: #FFFFFF;
		border-radius: 2rem;
	}

	.glyphicon-plus {
		color: #FFFFFF;
		padding: 1.5rem;
	}

	.add-assignment {
		border-radius: 2rem;
		color: #FFFFFF;
		font-weight: 600;
		font-size: 1.5rem;
		margin-left: 2vw;
		margin-top: 2%;
	}

	.footer .add-assignment:hover {
		text-decoration: none;
		color: #FFFFFF;
	}

	.panel .panel-default {
		border-color: #5FBEF0;
		border-radius: 2rem !important;
	}

	#headingone,
	.panel-body {
		background-color: #FFFFFF !important;
		border-radius: 2rem !important;
	}

	.panel-title {
		display: flex;
		justify-content: space-between;
	}

	table.form-table>tbody>tr>td {
		text-align: left !important;
		border-top: none;
	}

	table.form-table>tbody>tr>td>input {
		border: none;
		border: solid 1px #5FBEF0;
		border-radius: 1px;
	}

	a{
		color:#5FBEF0;
	}
	.page-header>h1 {
		display: flex;
		flex-direction: row;
		align-items: center;
		justify-content: space-between;
	}

	#note_content {
		color: #FF0000;
		font-size: 1.5rem;
		font-weight: 400;
		text-align: center;
	}

	.arrange-instructions {
		margin-left: 25vw;
		padding-bottom: 2.2rem;
	}

	#instructions-panel-default {
		width: 56%;
		border-radius: 2rem;
		float: right;
		border-color: #5FBEF0;
		background-color: #FFFFFF;
		font-family: Poppins;
		position: fixed;
	}

	@media (max-width: 2560px) {

		.footer {
			margin-left: calc(13vw - 2rem);
			height: 5.6rem;
			width: calc(10.5vw - 2rem);
		}

		.footer .add-assignment {
			font-size: 1.7rem;
		}

		.panel-title {
			font-size: 20px;
		}

		.panel-body {
			font-size: 18px;
		}

		.table.table-hover {
			font-size: 2rem;
		}

		.page-header {
			padding-left: calc(1vw - 2rem);
		}

	}

	@media (max-width: 2560px) {
		.footer {
			width: calc(10.8vw - 2rem);
		}
	}


	@media (max-width: 2330px) {
		.footer {
			width: calc(11.2vw - 2rem);
		}
	}

	@media (max-width: 2304px) {
		.footer {
			margin-left: calc(14vw - 2rem);
		}
	}

	@media (max-width: 2300px) {


		.page-header {
			padding-left: calc(1.4vw - 2rem);
		}
	}

	@media (max-width: 2220px) {
		.footer {
			width: calc(12vw - 2rem);
		}
	}


	@media (max-width: 2100px) {
		.page-header {
			padding-left: calc(2.4vw - 2rem);
		}
	}

	@media (max-width: 2000px) {
		.footer {
			width: calc(13vw - 2rem);
			margin-left: calc(15vw - 2rem);

		}

	}


	@media (max-width: 1949px) {
		.page-header {
			padding-left: calc(3.4vw - 2rem);
		}

		.footer {
			margin-left: calc(17vw - 2rem);
			height: 5.2rem;
		}

		.table.table-hover {
			font-size: 1.5rem;
		}

	}

	@media (max-width: 1900px) {
		.footer .add-assignment {
			font-size: 1.5rem;
		}
	}

	@media (max-width: 1810px) {
		.page-header {
			padding-left: calc(2.6vw - 2rem);
		}

		.footer {
			margin-left: calc(18vw - 2rem);
		}
	}

	@media (max-width: 1700px) {

		.footer .add-assignment {
			font-size: 1.3rem;
		}
	}

	@media (max-width: 1600px) {
		.table.table-hover {
			font-size: 1.3rem;
		}

		.panel-title {
			font-size: 16px;
		}

		.footer {
			width: calc(13.5vw - 2rem);
			height: 4.5rem;
		}
	}

	@media (max-width: 1500px) {
		.footer .add-assignment {
			font-size: 1.1rem;
		}
	}

	@media (max-width: 1410px) {
		.table.table-hover {
			font-size: 1.2rem;
		}

	}

	@media (max-width: 1309px) {
		.table.table-hover {
			font-size: 1.1rem;
		}

		.footer .add-assignment {
			font-size: 1rem;
		}
	}


	@media (max-width: 1248px) {
		.table.table-hover {
			font-size: 1rem;
		}

		.footer {
			width: calc(14.5vw - 2rem);
		}

	}

	@media (max-width: 1186px) {
		.table.table-hover {
			font-size: 0.9rem;
		}

		.arrange-export-grades {
			margin-right: -33vw;
		}
	}

	@media (max-width: 1124px) {
		.footer {
			width: calc(16.5vw - 2rem);
		}
	}


	#switch_course_btn,
	#exportButton,
	#instructionsButton {
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

	.arrange-switch-course {
		margin-right: -58vw;
	}

	.arrange-export-grades {
		margin-right: -36vw;
	}

	.bg-model {
		display: none;
		position: fixed;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		z-index: 1;
		background-color: rgba(0, 0, 0, .2);
	}

	.course-model {
		display: flex;
		flex-direction: column;
		background: #FFFFFF;
		box-shadow: 0px 0.2rem 1.3rem rgba(170, 170, 170, 0.27);
		border-radius: 1.4rem;
		width: 43.5rem;
		height: 25rem;
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

	.course-model-top-first {
		display: flex;
		align-items: center;
		background: #D2EDFB;
		border-radius: 1.4rem 1.4rem 0rem 0rem;
		padding-left: 2rem;
		padding-right: 2rem;
		height: 4rem;
	}

	.course-model-top-first h1 {
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 600;
		color: #006BB6;
		font-size: 1.6rem;
		margin: 0px;
		padding: 0.8rem 1rem;
	}

	.course-model-bottom {
		text-align: center;
		margin-top: -1rem;
	}

	.course-model-bottom button {
		border-radius: 2.1rem;
		padding: 1rem 4rem;
		width: 15rem;

	}


	.change-button {
		border: none;
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 600;
		font-size: 1.6rem;
		text-align: center;
		color: #FFFFFF;
		background: #5FBEF0;
		border: 0.1rem solid #5FBEF0;
	}

	.cancel-button {
		background: #FFFFFF;
		border: 0.1rem solid #5FBEF0;
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 600;
		font-size: 1.6rem;
		margin-right: 2rem;
		color: #5FBEF0;
		text-align: center;
		cursor: pointer;
	}

	.select-input {
		position: fixed;
		z-index: 1;
		width: 24rem;
		border-radius: 1.4rem;
		background-color: #fff;
		padding-left: 1rem;
		border: 1px solid #5FBEF0;
		backdrop-filter: blur(15px);
		border-radius: 19px;
		padding: 0.7rem 1rem;
		cursor: pointer;
		font-size: 3rem;
		background-image: url(https://datalab-static-images.s3.ap-south-1.amazonaws.com/admin_expand.png);
		background-repeat: no-repeat;
		background-position: 94%;
	}

	.options-list {
		display: none;
		list-style-type: none;
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 400;
		font-size: 14px;
		line-height: 18px;
		color: #000;
		overflow: hidden;
	}

	.stop-visible {
		display: block;
		margin-top: 1rem;
	}

	.select-outer {
		width: 200px;
	}

	.arrange-row {
		display: flex;
		padding: 1.6rem 3rem;
	}

	.course-title {
		margin-top: 0.6rem;
		padding-right: 3rem;
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 400;
		font-size: 16px;
		line-height: 24px;
		color: #263238;
	}

	.placeholder-div {
		color: #AAAAAA;
	}

	.select-arrange {
		margin-bottom: -4.1rem;
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 400;
		font-size: 16px;
		line-height: 24px;
		overflow: hidden;
		max-width:198px;
	}

	.select-outer-icon{
		background-image: url('https://datalab-static-images.s3.ap-south-1.amazonaws.com/dropdown_close.png');
	}

	.options-list li:hover {
		color: #5FBEF0;
		font-weight: 500;
	}

	.instruction {
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 400;
		font-size: 14px;
		line-height: 21px;
		color: #F7545D;
		padding: 3rem;
	}

	.add-assign-btn {
		background: #5FBEF0;
		border-radius: 19px;
		border: none;
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 600;
		font-size: 14px;
		color: #fff;
		padding: 0.7rem 1.6rem;
		margin-left: 15vw;
		margin-top: 2%;
	}

	.plus-icon {
		padding-bottom: 2px;
		padding-right: 4px;
	}

	.head-title {
		font-family: 'Poppins';
		font-style: normal;
		font-weight: 600;
		font-size: 21px;
		color: #000000;
	}

	.head-arrange {
		margin-left: auto;
	}

	.head-arrange button {
		margin-right: 2rem;
	}

	.instructions-model {
		background: #FFFFFF;
		box-shadow: 0px 0.2rem 1.3rem rgba(170, 170, 170, 0.27);
		border-radius: 16px;
		position: absolute;
		transform: translate(-50%, -50%);
		width: 808px;
		height: 324px;
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

	#instructionsCancel {
		font-size: 2rem;
		text-align: center;
		color: #006BB6;
		font-weight: 600;
		cursor: pointer;
		height: 1rem;
		width: 1rem;
	}

	.instructions-list-flow {
		font-family: 'Gothic A1';
		font-style: normal;
		font-weight: 400;
		font-size: 14px;
		line-height: 21px;
		color: #000000;
		margin-top: 16px;
		margin-right: 34px;
	}
</style>
{%- endblock -%}
{%- block title -%}
<p class="head-title">Manage Assignments</p>
<div class="head-arrange">
	<button id="instructionsButton" class="arrange-btn">Instructions</button>
	<button id="exportButton" onclick="exportData()" class="arrange-btn">Export Grades</button>
	<button id='switch_course_btn' class="arrange-btn">Switch Course</button>
</div>

<div>
	<div class="bg-model" id="switchCourseModal">
		<div class="course-model">
			<div class="course-model-top-first">
				<h1>Switch Course</h1>
			</div>
			<div class="arrange-row">
				<span class="course-title">Course name</span>
				<div id='selectouter'>
					<div class="select-input" id="selectInput">
						<p id="selectedListSelect" class="placeholder-div select-arrange">CourseName</p>
						<br>
						<div class="options-list" id="coursesListOptions">
						</div>
					</div>
				</div>
			</div>
			<p class="instruction">Note: Restart your server for changes to apply</p>
			<div class="course-model-bottom">
				<button id="switchCourseCancel" class="cancel-button">Cancel</button>
				<button id="switchCourseChange" class="change-button">Change</button>
			</div>
		</div>
	</div>
	<div class="bg-model" id="instructionsModal">
		<div class="instructions-model">
			<div>
				<div class="instructions-model-top-first">
					<span class="instructions-title">Instructions</span>
					<div>
						<span id="instructionsCancel">&times;</span>
					</div>
				</div>
			</div>
			<ol class="instructions-list-flow">
				<li>To <b>create</b> an assignment, click the "Add new assignment..." button below.</li>
				<li>To <b>edit assignment files</b>, click on the name of an assignment.</li>
				<li>To <b>edit the assignment metadata</b>, click on the edit button.</li>
				<li>To <b>generate</b> the student version of an assignment, click on the generate button.</li>
				<li>To <b>preview</b> the student version of an assignment, click on the preview button.</li>
				<li>To <b>release</b> the assignment to students, click the release button.
					You can "unrelease" an assignment by clicking again, though note some students may have
					already accessed the assignment. <b>Note</b> that for the release button to become
					available, the <code>course_id</code> option must be set in <code>nbgrader_config.py</code>.
					For details, see <a href="http://nbgrader.readthedocs.io/en/stable/configuration/config_options.html">the
						documentation</a>.</li>
				<li>To <b>collect</b> assignments, click the collect button.</li>
				<li>To <b>autograde</b> submissions, click on the number of collected submissions. You must run
					the autograder on the submissions before you can manually grade them.</li>
			</ol>

		</div>
	</div>
</div>
{%- endblock -%}

{%- block sidebar -%}
<li role="presentation" class="active">
	<a href="{{ base_url }}/formgrader/manage_assignments">
		<svg width="20" height="17" viewBox="0 0 20 22" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path
				d="M1.8 18C1.305 18 0.881101 17.8236 0.528301 17.4708C0.175501 17.118 -0.000598472 16.6944 1.52801e-06 16.2V3.6C1.52801e-06 3.105 0.176402 2.6811 0.529202 2.3283C0.882002 1.9755 1.3056 1.7994 1.8 1.8H5.58C5.775 1.26 6.1014 0.825 6.5592 0.495C7.017 0.165 7.5306 0 8.1 0C8.67 0 9.1839 0.165 9.6417 0.495C10.0995 0.825 10.4256 1.26 10.62 1.8H14.4C14.895 1.8 15.3189 1.9764 15.6717 2.3292C16.0245 2.682 16.2006 3.1056 16.2 3.6V16.2C16.2 16.695 16.0236 17.1189 15.6708 17.4717C15.318 17.8245 14.8944 18.0006 14.4 18H1.8ZM3.6 14.4H9.9V12.6H3.6V14.4ZM3.6 10.8H12.6V9H3.6V10.8ZM3.6 7.2H12.6V5.4H3.6V7.2ZM8.1 2.925C8.295 2.925 8.4561 2.8611 8.5833 2.7333C8.7105 2.6055 8.7744 2.4444 8.775 2.25C8.775 2.055 8.7111 1.8939 8.5833 1.7667C8.4555 1.6395 8.2944 1.5756 8.1 1.575C7.905 1.575 7.7439 1.6389 7.6167 1.7667C7.4895 1.8945 7.4256 2.0556 7.425 2.25C7.425 2.445 7.4889 2.6061 7.6167 2.7333C7.7445 2.8605 7.9056 2.9244 8.1 2.925Z"
				fill="white" />
		</svg>
		Assignments</a>
</li>
<li role="presentation">
	<a href="{{ base_url }}/formgrader/gradebook">
		<svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
			<path
				d="M13.2361 4.99035L18.2257 5.69425C18.6389 5.7507 18.9861 6.0296 19.1181 6.41144C19.25 6.7966 19.1424 7.21496 18.8438 7.5005L15.2257 10.8939L16.0799 15.7614C16.1493 16.1599 15.9792 16.565 15.632 16.8007C15.2882 17.0364 14.8333 17.0663 14.4618 16.8771L10.0035 14.6027L5.54862 16.8771C5.17362 17.0663 4.71876 17.0364 4.37501 16.8007C4.03126 16.565 3.85765 16.1599 3.93056 15.7614L4.78473 10.8939L1.16598 7.5005C0.867023 7.21496 0.760773 6.7966 0.892023 6.41144C1.02293 6.0296 1.36911 5.7507 1.78543 5.69425L6.77084 4.99035L9.00695 0.596577C9.19098 0.230812 9.57987 -0.00138092 10.0035 -0.00138092C10.4306 -0.00138092 10.8195 0.230812 11.0035 0.596577L13.2361 4.99035Z"
				fill="white" />
		</svg>
		Manual Grading</a>
</li>
<!--
  <li role="presentation"><a href="{{ base_url }}/formgrader/manage_students">
  <svg width="20" height="17" viewBox="0 0 20 17" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M13.2362 4.99035L18.2257 5.69425C18.6389 5.7507 18.9862 6.0296 19.1181 6.41144C19.25 6.7966 19.1424 7.21496 18.8438 7.5005L15.2257 10.8939L16.0799 15.7614C16.1493 16.1599 15.9792 16.565 15.632 16.8007C15.2882 17.0364 14.8334 17.0663 14.4618 16.8771L10.0035 14.6027L5.54865 16.8771C5.17365 17.0663 4.71879 17.0364 4.37504 16.8007C4.03129 16.565 3.85768 16.1599 3.9306 15.7614L4.78476 10.8939L1.16601 7.5005C0.867054 7.21496 0.760804 6.7966 0.892054 6.41144C1.02296 6.0296 1.36914 5.7507 1.78546 5.69425L6.77087 4.99035L9.00698 0.596577C9.19101 0.230812 9.5799 -0.00138092 10.0035 -0.00138092C10.4306 -0.00138092 10.8195 0.230812 11.0035 0.596577L13.2362 4.99035Z" fill="white"/>
</svg>
Manage Students</a></li>
-->
{%- endblock -%}

{%- block messages -%}
{% if windows %}
<div class="alert alert-warning" id="warning-windows">
	Windows operating system detected. Please note that the "release" and "collect"
	functionality will not be available.
</div>
{% elif exchange_missing %}
<div class="alert alert-warning" id="warning-exchange">
	The exchange directory at <code>{{ exchange }}</code> does not exist and could
	not be created. The "release" and "collect" functionality will not be available.
	Please see the documentation on
	<a href="http://nbgrader.readthedocs.io/en/stable/user_guide/managing_assignment_files.html#setting-up-the-exchange">Setting
		Up The Exchange</a>
	for instructions.
</div>
{% elif not course_id %}
<div class="alert alert-warning" id="warning-course-id">
	The course id has not been set in <code>nbgrader_config.py</code>. The "release"
	and "collect" functionality will not be available. Please see the documentation on
	<a href="http://nbgrader.readthedocs.io/en/stable/user_guide/managing_assignment_files.html#setting-up-the-exchange">Setting
		Up The Exchange</a>
	for instructions.
</div>
{% endif %}
{%- endblock -%}

{%- block table_header -%}
<tr class='head-row'>
	<th>Name</th>
	<th class="text-center">Due Date</th>
	<th class="text-center">Status</th>
	<th class="text-center no-sort">Edit</th>
	<th class="text-center no-sort">Generate</th>
	<th class="text-center no-sort">Preview</th>
	<th class="text-center no-sort">Release</th>
	<th class="text-center no-sort">Collect</th>
	<th class="text-center"># Submissions</th>
	<th class="text-center no-sort">Generate Feedback</th>
	<th class="text-center no-sort">Release Feedback</th>
</tr>
{%- endblock -%}

{%- block table_body -%}
<tr>
	<td colspan="11">
		Loading, please wait...
	</td>
</tr>
{%- endblock -%}
{%block foot%}

<a href="#" onClick="createAssignmentModal();" class='add-assignment'> <button class="add-assign-btn"><span><img
				class="plus-icon" src="https://datalab-static-images.s3.ap-south-1.amazonaws.com/add_assign.png" alt="plus">Add new
			assignment</span></button></a>
{%endblock%}
{% block script%}
<script>
	const hub_url = window.location.href.split('user')[0];
	const ngshare_url = hub_url + 'services/ngshare/';

	window.onload = function () {
		const loadCourses = async () => {
			const response = await fetch(`${ngshare_url}/courses`);
			const response_json = await response.json();
			console.log(response_json);
			var courses_list = response_json.courses;
			console.log(courses_list);
			$.each(courses_list, function (item, value) {
				$('#coursesListOptions').append($('<li>', {
					id: value,
					text: value
				}));
			})
		}
		loadCourses();
	}

	$('#switch_course_btn').click(() => {
		$('#switchCourseModal').show();
		$("#selectedListSelect").text('Course name');
		$('.options-list').removeClass('stop-visible');
		$('#instructions-panel-default').removeAttr('style');
		$("#selectedListSelect").addClass('placeholder-div');
	});

	$('#switchCourseCancel').click(() => $('#switchCourseModal').hide());

	$('#switchCourseChange').on('click', () => {
		const selectedCourse = $('#selectedListSelect').text();
		if (selectedCourse == 'Course name') {
			$('#selectInput').css({ 'border': '0.1vw solid red' });
		}
		else {
			$.ajax({
				url: "{{ base_url }}/formgrader/api/changecourse/" + selectedCourse,
			}).done(function (response) {
				console.log(response);
				console.log(typeof (response.success))
				if (response.success == true || "True" || "true") {
					window.location.href = `${hub_url}hub/home`;
				}
			}
			);
		}

	});

	$('#selectouter').click(() => {
		$('.options-list').toggleClass('stop-visible');
		$("#selectInput").toggleClass('select-outer-icon');
		
	});

	$("#selectInput").on("click", "div li", function () {
		console.log('entered');
		var selectedText = $(this).attr('id');
		$("#selectedListSelect").text(selectedText);
		$("#selectedListSelect").removeClass('placeholder-div');
		console.log('selectText', selectedText);
		$('#selectInput').removeAttr('style');
	});

	$('#instructionsExpand').on("click", () => {
		$('#instructions-panel-default').css({ 'z-index': '1' });
	});

	$('#instructionsButton').on("click",()=>{
		$('#instructionsModal').show();
	});
	$('#instructionsCancel').on("click",()=>{
		$('#instructionsModal').hide();
	});

	function exportData() {
		console.log('baseUrl', base_url);
		$.ajax({
			url: "{{ base_url }}/formgrader/api/customexport",
		}).done(function (res) {
			console.log(res);
			const response = JSON.parse(res);
			if (response.length > 0) {
				const dictionaryKeys = Object.keys(response[0]);
				const dictValuesAsCsv = response.map((dict) =>
					dictionaryKeys.map((key) => dict[key]).join(",")
				);
				const result = [dictionaryKeys.join(","), ...dictValuesAsCsv].join("\n");
				var today = new Date();
				const dd = String(today.getDate()).padStart(2, "0");
				const mm = String(today.getMonth() + 1).padStart(2, "0");
				const yyyy = today.getFullYear();
				today = mm + "/" + dd + "/" + yyyy;
				const downloadLink = document.createElement("a");
				const blob = new Blob(["\ufeff", result]);
				const url = URL.createObjectURL(blob);
				downloadLink.href = url;
				downloadLink.download = "data_" + today + ".csv";
				document.body.appendChild(downloadLink);
				downloadLink.click();
				document.body.removeChild(downloadLink);
			}
			else {
				alert("No data to export")
			}
		});
	}
</script>
{% endblock %}

