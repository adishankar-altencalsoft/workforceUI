<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header>
            <ul class="mainItems">
                <li><a href="#">Dashboard</a></li>
                <li class="rosterLi"><a href="#">Schedule</a></li>
                <li><a href="#">My Shifts</a></li>
                <li><a href="#">Reports</a></li>
            </ul>
            <!-- <div class="btn-group currentUser">
                <button type="button" class="btn btn-secondary usrBtn">Suresh</button>
                <button type="button" class="btn btn-secondary dropdown-toggle btn-drpd" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <div class="dropdown-menu ">
                    <a class="dropdown-item" href="#">Suresh</a>
                    <a class="dropdown-item" href="#">Settings</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="#">Log Off</a>
                </div>
            </div> -->
            <ul class="subMenu nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link " id="plan-tab"  href="home" role="tab"
                        aria-controls="home" aria-selected="true">Plan</a></li>
                <li><a class="nav-link"  href="available" role="tab" aria-controls="home"
                        aria-selected="true">Availability Matrix</a></li>
                <li><a class="nav-link " id="shifts-tab"  href="shifts" role="tab"
                        aria-controls="home" aria-selected="true">Shifts</a></li>
                <li><a class="nav-link" id="slot-tab"  href="slots" role="tab" aria-controls="home"
                        aria-selected="true">Slot</a></li>
                <li><a class="nav-link" id="skills-tab"  href="skillls" role="tab" aria-controls="home"
                        aria-selected="true">Skills</a></li>
                <li><a class="nav-link" id="roster-tab"  href="roaster" role="tab" aria-controls="home"
                        aria-selected="true">Roster Settings</a></li>
                <li><a class="nav-link" id="constraints-tab"  href="constraints" role="tab"
                        aria-controls="home" aria-selected="true">Constraints</a></li>
            </ul>
        </header>