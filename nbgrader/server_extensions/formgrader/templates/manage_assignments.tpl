{%- extends 'base.tpl' -%}
{%- block head -%}
<script>
    var url_prefix = "{{ url_prefix }}";
</script>
<script src="{{ base_url }}/formgrader/static/js/manage_assignments.js"></script>
<style>
    .instruction-head {
        font-weight: 600;
        font-family: 'Poppins';
    }

    .dataTables_filter {
        width: 30%;
        margin-top: -38px;
    }

    .panel-body,
    .panel-group {
        background-color: #FFFFFF;
    }

    div.dataTables_wrapper div.dataTables_filter input {
        width: 20vw !important;
        border-radius: 2rem;
        height: 3.8rem;
    }

    .panel-default>.panel-heading {
        background-color: #FFFFFF;
        border-radius: 2rem;
    }

    .footer {
        margin-left: calc(16vw - 2rem);
        margin-top: 2%;
        border-radius: 3rem;
        background-color: #5FBEF0;
        height: 4.6rem;
        width: 12vw;
    }

    .footer:hover {
        background-color: #006BB6;
    }

    .glyphicon-plus {
        color: #FFFFFF;
        padding: 1.5rem;
    }

    .footer .add-assignment {
        border-radius: 2rem;
        color: #FFFFFF;
        font-weight: 600;
        font-size: 1.5rem;
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

    .modal-content {
        border-radius: 2rem;
    }

    .align-middle {
        text-align: left !important;
        font-size: 15px;
        font-weight: 600;
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

    .modal-footer {
        border-top: none;
        text-align: center;
    }

    .btn-primary {
        color: #fff;
        background-color: #5FBEF0;
        border-radius: 20px;
        width: 100px;
        border: none;
        font-weight: 600;
    }

    .btn-danger {
        color: #5FBEF0;
        background-color: #ffffff;
        border-color: #5FBEF0;
        border-radius: 20px;
        width: 100px;
    }

    .modal-title {
        font-size: 20px;
        font-weight: bolder;
    }

    .page-header>h1 {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
    }

    #switch_course_button {
        width: calc(10vw - 2rem);
        height: 4rem;
        border-radius: 3rem;
        border: none;
        margin-right: calc(-19vw + 0rem);
        background-color: #D2EDFB;
        font-size: 2rem;
        font-weight: 100;
    }

    #change_course_button {
        width: calc(8vw - 2rem);
        height: calc(6vh - 2rem);
        border-radius: 2rem;
        border: none;
        margin: 3rem;
        background-color: #D2EDFB;
        font-size: 2rem;
        font-weight: 100;
    }

  
    .changeCourseModal {
        display: none;
        position: fixed;
        z-index: 2;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0, 0, 0, 0.4);
    }
    .courseModalContent {
        background-color: #fefefe;
        margin: calc(35vh - 2rem) auto;
        padding: 3rem;
        border: 1px solid #5FBEF0;
        width: 40%;
        border-radius: 3rem;
        height: 40%;
        box-shadow: 0px 2px 13px rgb(170 170 170 / 27%);
    }

    .courseClose {
        color: #000000;
        float: right;
        font-size: 2rem;
        font-weight: bold;
    }

    .courseClose:hover,
    .courseClose:focus {
        color: #FF0000;
        text-decoration: none;
        cursor: pointer;
    }

    .column-flex {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: baseline;
    }

    .row-flex {
        display: flex;
        align-self: center;
    }

    .button-row {
        margin-left: calc(2vw - 21rem);
    }

    #courseLabel {
        font-family: 'Gothic A1';
        font-style: normal;
        font-size: 2rem;
        line-height: 3vh;
        color: black;
        font-weight: 400 !important;
        margin: 3rem;
    }

    #cancel_course_button {
        background: white;
        border-radius: 2rem;
        border-color: #5FBEF0;
        margin: 3rem;
        font-family: 'Poppins';
        font-style: normal;
        font-size: 2rem;
        line-height: 2vh;
        color: #5FBEF0;
        width: calc();
        position: absolute;
        border-width: 0.1vw !important;
        border-style: double;
        width: calc(8vw - 2rem);
        height: calc(6vh - 2rem);
    }

    .select-div::after {
        content: url("https://ik.imagekit.io/iwwbj9so6/Vector_9_c4obhy8x5.png?ik-sdk-version=javascript-1.4.3&updatedAt=1660643960909");
    }

    .select-div {
        position: relative;
    }

    .select-div::after {
        position: absolute;
        top: calc(4vh - 2rem);
        right: calc(4vw - 2rem);
    }

    #course-list {
        appearance: none;
        margin: 3rem 3rem 3rem 3rem;
        width: calc(9vw - 2rem);
        height: 3.5vh;
        background: #FFFFFF;
        border: 0.1vw solid #5FBEF0;
        border-radius: 2rem;
        font-family: 'Poppins';
        font-style: normal;
        font-size: 1.8rem;
        padding: 0.5rem 0.5rem 0.5rem 1rem;
        font-weight: 100;
    }

    #note_content {
        color: #FF0000;
        font-size: 1.5rem;
        font-weight: 400;
        text-align: center;
    }

    #instructions-panel-default {
        width: 70%;
        border-radius: 2rem;
        float: right;
        border-color: #5FBEF0;
        background-color: #FFFFFF;
        font-family: Poppins;
    }
    @media (max-width: 2560px) {
        #switch_course_button {
            width: calc(10vw - 2rem);
            margin-right: calc(-16vw + 0rem);
        }
	#change_course_button,#cancel_course_button {
		height: calc(8vh - 2rem);
	}

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

        #courseLabel {
            font-size: 2.5rem;
        }

        #course-list {
            font-size: 2.2rem;
        }

        .courseClose {
            font-size: 4rem;
        }

        .select-div::after {
            top: calc(3.5vh - 2rem);
            right: calc(3vw - 2rem);
        }

        .courseModalContent {
            width: 25%;
            height: 25%;
        }

        #change_course_button {
            border-radius: 3rem;
        }

        #cancel_course_button {
            border-radius: 3rem;
        }
    }

    @media (max-width: 2560px) {
        .footer {
            width: calc(10.8vw - 2rem);
        }
    }
    @media (max-width: 2374px){
.select-div::after {
    top: calc(3.8vh - 2rem);
}}
    @media (max-width: 2330px){
	.footer {
	    width: calc(11.2vw - 2rem);
	}
    }
    @media (max-width: 2304px){
.footer {
    margin-left: calc(14vw - 2rem);
}}
    @media (max-width: 2300px){
#switch_course_button {
    margin-right: calc(-18vw + 0rem);
}
.page-header {
    padding-left: calc(1.4vw - 2rem);
}
}
    @media (max-width: 2220px){
.footer {
    width: calc(12vw - 2rem);
}}
@media (max-width: 2374px){
.select-div::after {
    top: calc(4vh - 2rem);
}
}
@media (max-width: 2100px){
.page-header {
    padding-left: calc(2.4vw - 2rem);
}
}
@media (max-width: 2000px){
.footer {
    width: calc(13vw - 2rem);
    margin-left: calc(15vw - 2rem);

}
.select-div::after {
    top: calc(4.2vh - 2rem);
}
}
@media (max-width: 1978px){
.courseModalContent {
    width: 30%;
    height: 30%;
}
}
@media (max-width: 1949px){
.page-header {
    padding-left: calc(3.4vw - 2rem);
}
#switch_course_button {
    height: 5rem;
}
.footer {
    margin-left: calc(17vw - 2rem);
    height: 5.2rem;
}
.table.table-hover {
    font-size: 1.5rem;
}
#switch_course_button {
    margin-right: calc(-19vw + 0rem);
}
}
@media (max-width: 1900px){
.footer .add-assignment {
    font-size: 1.5rem;
}
}

@media (max-width: 1863px){
#course-list {
    height: 4vh;
        width: calc(10vw - 2rem);
    }
    .select-div::after {
   top: calc(4.5vh - 2rem);
        right: calc(3.5vw - 2rem);
}
 
    }
@media (max-width: 1810px){
.page-header {
    padding-left: calc(4.6vw - 2rem);
}
.footer {
    margin-left: calc(18vw - 2rem);
}
}
@media (max-width: 1700px){
div.dataTables_wrapper div.dataTables_filter input {
    width: 19vw !important;
    height: 3.3rem;
}
#switch_course_button {
    font-size: 1.5rem;
}
.footer .add-assignment {
    font-size: 1.3rem;
}
}
@media (max-width: 1682px){
#course-list {
    height: 4vh;
    width: calc(11vw - 2rem);
}
#courseLabel {
    font-size: 2.2rem;
}
}
@media (max-width: 1600px){
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

@media (max-width: 1583px){
#courseLabel {
    font-size: 2rem;
}}
@media (max-width: 1528px){
.courseModalContent {
    width: 40%;
    height: 40%;
}
#course-list {
    width: calc(12vw - 2rem);
    height: 5vh;
}
.select-div::after {
    right: calc(5vw - 2rem);
    top: calc(6vh - 2rem);
}
}
@media (max-width: 1500px){
.footer .add-assignment {
    font-size: 1.1rem;
}
}
@media (max-width: 1442px){
#course-list {
    font-size: 1.4rem;
}
#cancel_course_button,#change_course_button {
    width: calc(10vw - 2rem);
}
}
@media (max-width: 1432px){
#switch_course_button {
    font-size: 1.3rem;
}
}
@media (max-width: 1410px){
.table.table-hover {
    font-size: 1.2rem;
}
div.dataTables_wrapper div.dataTables_filter input {
    width: 17vw !important;
}

}
@media (max-width: 1309px){
.table.table-hover {
    font-size: 1.1rem;
}
.footer .add-assignment {
    font-size: 1rem;
}
}
@media (max-width: 1262px){
#courseLabel {
    font-size: 1.8rem;
}
#cancel_course_button,#change_course_button {
    font-size: 1.8rem;
    height: calc(8vh - 2rem);
}
.courseClose {
    font-size: 2rem;
}
.courseModalContent {
    height: 27%;
}
#switch_course_button {
    width: calc(12vw - 2rem);
}
}
@media (max-width: 1255px){
#course-list {
    width: calc(11vw - 2rem);
}
}
@media (max-width: 1248px){
.table.table-hover {
    font-size: 1rem;
}
.footer {
    width: calc(14.5vw - 2rem);
}
#switch_course_button {
    width: calc(12vw - 2rem);
        height: 4rem;
}
}
@media (max-width: 1218px){
.courseModalContent {
    height: 40%;
    width: 40%;
}
}
@media (max-width: 1186px){
.table.table-hover {
    font-size: 0.9rem;
}}
@media (max-width: 1124px){
.footer {
    width: calc(16.5vw - 2rem);
}
}
</style>
{%- endblock -%}
{%- block title -%}
Manage Assignments
<button id='switch_course_button'>Switch me Course</button>
<div id="changeCourseModal" class="modal">
    <div class="courseModalContent">
        <span class="courseClose">&times;</span>
        <div class="column-flex">
            <div class="row-flex select-div">
                <div>
                    <label id="courseLabel" for="course">Course name</label>
                </div>
                <div>
                    <select class="select" id="course-list" name="course">
                        <option value="" disabled selected>select course</option>
                    </select>
                </div>
            </div>
            <div class="row-flex">
                    <p id='note_content'>Note: Restart your server for the changes to apply.</p>
            </div>
            <div class="row-flex button-row">
                <div>
                   <button type="button" id="change_course_button">Change</button>
                </div>
                <div>
                   <button type="button" id="cancel_course_button">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</div>
{%- endblock -%}

{%- block sidebar -%}
<li role="presentation" class="active">
    <a href="{{ base_url }}/formgrader/manage_assignments">
        <svg width="20" height="17" viewBox="0 0 20 22" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M1.8 18C1.305 18 0.881101 17.8236 0.528301 17.4708C0.175501 17.118 -0.000598472 16.6944 1.52801e-06 16.2V3.6C1.52801e-06 3.105 0.176402 2.6811 0.529202 2.3283C0.882002 1.9755 1.3056 1.7994 1.8 1.8H5.58C5.775 1.26 6.1014 0.825 6.5592 0.495C7.017 0.165 7.5306 0 8.1 0C8.67 0 9.1839 0.165 9.6417 0.495C10.0995 0.825 10.4256 1.26 10.62 1.8H14.4C14.895 1.8 15.3189 1.9764 15.6717 2.3292C16.0245 2.682 16.2006 3.1056 16.2 3.6V16.2C16.2 16.695 16.0236 17.1189 15.6708 17.4717C15.318 17.8245 14.8944 18.0006 14.4 18H1.8ZM3.6 14.4H9.9V12.6H3.6V14.4ZM3.6 10.8H12.6V9H3.6V10.8ZM3.6 7.2H12.6V5.4H3.6V7.2ZM8.1 2.925C8.295 2.925 8.4561 2.8611 8.5833 2.7333C8.7105 2.6055 8.7744 2.4444 8.775 2.25C8.775 2.055 8.7111 1.8939 8.5833 1.7667C8.4555 1.6395 8.2944 1.5756 8.1 1.575C7.905 1.575 7.7439 1.6389 7.6167 1.7667C7.4895 1.8945 7.4256 2.0556 7.425 2.25C7.425 2.445 7.4889 2.6061 7.6167 2.7333C7.7445 2.8605 7.9056 2.9244 8.1 2.925Z" fill="white"/>
        </svg>
        Assignments
    </a>
</li>
<li role="presentation">
    <a href="{{ base_url }}/formgrader/gradebook">
        <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M13.2361 4.99035L18.2257 5.69425C18.6389 5.7507 18.9861 6.0296 19.1181 6.41144C19.25 6.7966 19.1424 7.21496 18.8438 7.5005L15.2257 10.8939L16.0799 15.7614C16.1493 16.1599 15.9792 16.565 15.632 16.8007C15.2882 17.0364 14.8333 17.0663 14.4618 16.8771L10.0035 14.6027L5.54862 16.8771C5.17362 17.0663 4.71876 17.0364 4.37501 16.8007C4.03126 16.565 3.85765 16.1599 3.93056 15.7614L4.78473 10.8939L1.16598 7.5005C0.867023 7.21496 0.760773 6.7966 0.892023 6.41144C1.02293 6.0296 1.36911 5.7507 1.78543 5.69425L6.77084 4.99035L9.00695 0.596577C9.19098 0.230812 9.57987 -0.00138092 10.0035 -0.00138092C10.4306 -0.00138092 10.8195 0.230812 11.0035 0.596577L13.2361 4.99035Z" fill="white"/>
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
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    <div class="panel panel-default" id="instructions-panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
                <span class='instruction-head'>Instructions (click to expand)</span>
                <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                    aria-expanded="false" aria-controls="collapseOne">
                    <img
                        src="https://datalab-static-images.s3.ap-south-1.amazonaws.com/expand.png" />
                </a>
            </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                <ol>
                    <li>To <b>create</b> an assignment, click the "Add new assignment..." button below.</li>
                    <li>To <b>edit assignment files</b>, click on the name of an assignment.</li>
                    <li>To <b>edit the assignment metadata</b>, click on the edit button.</li>
                    <li>To <b>generate</b> the student version of an assignment, click on the generate button.</li>
                    <li>To <b>preview</b> the student version of an assignment, click on the preview button.</li>
                    <li><i>(JupyterHub only)</i> To <b>release</b> the assignment to students, click the release button.
                        You can "unrelease" an assignment by clicking again, though note some students may have
                        already accessed the assignment. <b>Note</b> that for the release button to become
                        available, the <code>course_id</code> option must be set in <code>nbgrader_config.py</code>.
                        For details, see <a
                            href="http://nbgrader.readthedocs.io/en/stable/configuration/config_options.html">the
                            documentation</a>.</li>
                    <li><i>(JupyterHub only)</i> To <b>collect</b> assignments, click the collect button.</li>
                    <li>To <b>autograde</b> submissions, click on the number of collected submissions. You must run
                        the autograder on the submissions before you can manually grade them.</li>
                </ol>
            </div>
        </div>
    </div>
</div>
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
    <a
        href="http://nbgrader.readthedocs.io/en/stable/user_guide/managing_assignment_files.html#setting-up-the-exchange">Setting
        Up The Exchange</a>
    for instructions.
</div>
{% elif not course_id %}
<div class="alert alert-warning" id="warning-course-id">
    The course id has not been set in <code>nbgrader_config.py</code>. The "release"
    and "collect" functionality will not be available. Please see the documentation on
    <a
        href="http://nbgrader.readthedocs.io/en/stable/user_guide/managing_assignment_files.html#setting-up-the-exchange">Setting
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
<div class='footer'>
    <a href="#" onClick="createAssignmentModal();" class='add-assignment'><span class="glyphicon glyphicon-plus"
            aria-hidden="true"></span>Add new assignment</a>
</div>
{%endblock%}
{% block script%}
<script>
    const hub_url = window.location.href.split('user')[0];
    const ngshare_url=hub_url+'services/ngshare/';
    const switchCourseButton = document.getElementById("switch_course_button");
    const courseModal = document.getElementById("changeCourseModal");
    const closeSpan = document.getElementsByClassName("courseClose")[0];
    const cancel = document.getElementById("cancel_course_button");
    const change_course_button = document.getElementById("change_course_button");
    const selected_course = document.getElementById("course-list");
    window.onload = function () {
        const loadCourses = async () => {
            const response = await fetch(`${ngshare_url}/courses`);
            const response_json = await response.json();
	    console.log(response_json);
            var courses_list = response_json.courses;
	    console.log(courses_list);
            $.each(courses_list, function (item, value) {
                $('#course-list').append($('<option>', {
                    value: value,
                    text: value
                }));
            })
        }
        loadCourses();
    }
    switchCourseButton.onclick = function () {
        courseModal.style.display = "block";
    }
    cancel.onclick = function () {
        courseModal.style.display = "none";
    }
    closeSpan.onclick = function () {
        courseModal.style.display = "none";
    }
    change_course_button.onclick = function () {
        const selectedCourse = selected_course.options[selected_course.selectedIndex].text;
        if(selectedCourse=='select course'){
           selected_course.style.border = '0.1vw solid red';
        }
        else{
            $.ajax({
                url: "formgrader/api/changecourse/" + selectedCourse,
            }).done(function (response) {
                console.log(response);
                console.log(typeof (response.success))
                if (response.success == true || "True" || "true") {
                    window.location.href = `${hub_url}hub/home`;
                }
            }
            );
        }
    }
    window.onclick = function (event) {
        if (event.target == courseModal) {
            courseModal.style.display = "none";
        }
    }
</script>
{% endblock %}