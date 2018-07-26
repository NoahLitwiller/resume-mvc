<!DOCTYPE html>
<html lang="en-US">

<head>
<title>Resume Webpage</title>
<meta name="viewport" content="width=device-width, initial scale=1.0">
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/resume-webpage-style.css">
</head>

<body class="col-12">
   <div align="right">
    <form action="${pageContext.request.contextPath}/resources/documents/fullResume.pdf" target="_blank">
        <input id="fullResumeButton" type="submit" value="View Full Resume"/>
    </form>
   </div>
    <div class="section col-9" id="titleblock">
        <div class="col-3" id="avatarBox">
            <img src="${pageContext.request.contextPath}/resources/images/NoahPicture2.jpg" class="col-12"  id="avatar"/>
            <a href="https://www.linkedin.com/in/noah-litwiller-a97556145/" target="_blank">
                <div class="overlay">
                    <div class="overlayText">LinkedIn</div>
                </div>
            </a>
        </div>
        <div id="name" >Noah Litwiller</div>
        <div id="contact">
            <span id="phone">(309) 826-8966</span> | <span id="email"><a id="emailLink" href="mailto:litwillernoah@gmail.com">litwillernoah@gmail.com</a></span>
        </div>
        <div id="address">3605 Armstrong Drive, Bloomington, IL 61704</div>
    </div>
    <div class="topnav col-9">
        <a href="#experience" onclick="showSection('experience')" class="col-2">Experience</a>
        <a href="#education" onclick="showSection('education')" class="col-2">Education</a>
        <a href="#skills" onclick="showSection('skills')" class="col-2">Skills</a>
        <a href="#projects" onclick="showSection('projects')" class="col-2">Projects</a>
        <a href="${pageContext.request.contextPath}/blog" class="col-2">Blog</a>
        <div class="col-2" id="gitDropdown">
            <a href="" class="col-12">Git</a>
            <div id="gitDropdownOptions">
                <a href="https://gitlab.com/NoahLitwiller" target="_blank" class="col-12">GitLab</a>
                <a href="https://github.com/NoahLitwiller" target="_blank" class="col-12">GitHub</a>
            </div>
        </div>
    </div>
   <div class="section col-9" id="projects">
        <div class="heading">Projects</div>
        <ul>
            <li class="bullet">Resume Webpage</li>
                <ul>
                    <li class="subbullet">Used Spring MVC</li>
                    <li class="subbullet">Created multiple Views using JSP, HTML, CSS, and JavaScript</li><br>
                </ul>
            <li class="bullet">Fractal Program</li>
            	<ul>
            		<li class="subbullet">Programmed and displayed the Mandelbrot fractal</li>
            		<li class="subbullet">Worked with equations involving imaginary numbers to plot points</li>
            	</ul>
        </ul>
    </div>
    <div class="section col-9" id="experience">
        <div class="heading">Experience</div>
        <ul>
            <li class="bullet">Enterprise Technology Intern at State Farm Insurance (June 2018 - July 2018)</li>
            <ul>
                <li class="subbullet">Used Spring MVC to create a resume web application</li>
                <li class="subbullet">Used HTML, CSS, and JavaScript to design and display multiple Views</li>
            </ul><br>
            <li class="bullet">IT Student Intern at State Farm Insurance (June 2017 - August 2017) </li>
            <ul>
                <li class="subbullet">Gained a basic understanding of the Citrix Synergy software</li>
                 <li class="subbullet">Assisted with the deployment and organization of virtual applications and desktops</li>
                <li class="subbullet">Led a session of a junior high coding camp in HTML and CSS</li>
            </ul>
        </ul>
    </div>
    <div class="section col-9" id="education">
        <div class="heading">Education</div>
        <ul>
            <li class="bullet" id="E1">Indiana University (beginning August 2018)</li>
                <ul>
                    <li class="subbullet">Pursuing Computer Science Degree in the School of Informatics, Computing and Engineering</li>
                    <li class="subbullet">Accepted to Hutton Honors College</li><br>
                </ul>
            <li class="bullet" id="E2">University High School (Graduated May 2018, 3.98/4.0 GPA)</li>
        </ul>
    </div>
    <div class="section col-9" id="skills">
        <div class="heading">Skills</div>
        <ul>
            <li class="bullet">Experienced with Java at an intermediate level</li>
                 <ul>
                <li class="subbullet">AP Computer Science test score: 5</li><br>
                </ul>  
            <li class="bullet">Experienced with HTML, CSS, and JavaScript at a novice level</li><br>
            <li class="bullet">Experienced with the Microsoft Word, PowerPoint, and Excel</li><br>
        </ul>
    </div>
<script>
function showSection(sectionID) {
    var sections = document.getElementsByClassName("section");
    for(i = 0; i < sections.length; i++) {
        if (sections[i].getAttribute("id") == sectionID) {
            sections[i].style.display = "block";
        } else {
            if (sections[i].getAttribute("id") != "titleblock") {
                sections[i].style.display = "none";    
            }
        }
    }
}    
</script>  
</body>   
</html>
