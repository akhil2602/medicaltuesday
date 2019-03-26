<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@page isELIgnored="false" %>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<link href="search-filter.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>


<style>
    .searchFilter {
  margin-bottom: 20px;    
}
 .searchFilter.btn {
    display: inline-block;
    font-weight: 400;
    line-height: 1.25;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 1px solid transparent;
    padding: .5rem 1rem;
    font-size: 16px;
    border-radius:40px;
    height: 50px;
    min-width: 20px;
}
.searchFilter .btn-secondary {
    color: #373a3c;
    background-color: #fff;
    border: 1px solid #ccc;
}
.searchFilter .btn-secondary:hover {
    color: #373a3c;
    background-color: #e6e6e6;
    border-color: #adadad;
}
.searchFilter .btn-search {
  background-color: #00aced;
  color: #fff;
  border: 1px solid #00aced;
  border-radius:40px;
}
.searchFilter .btn-search:hover {
  background-color: #b20a11;
  color: #fff;
  border: 1px solid #b20a11;
}
.searchFilter .label-icon {
  display: none;  
}
.searchFilter .glyphicon {
    margin-right: -15px;
}
.searchFilter .dropdown-menu .category_filters {
  min-width: 178px;
  width: 70%;
  margin: 15px 0 0 -25px;
}
.searchFilter .dropdown-menu-right {
    right: 170px;
    min-width: 175px;
	top: 90%;
}
.searchFilter .dropdown-menu .category_filters li {
  list-style-type: none;
  padding: 2px 10px;
  font-size: 18px;
}
.searchFilter .dropdown-menu .category_filters label {
  margin-left: 15px;
}
@media (min-width: 14px) {
  .ct-header .ct-jumbotron .inner {
    max-width: 230px;
    min-height: 230px;
  }  
}
@media (max-width: 14px) {
  .ct-header-slider .item {
    background-size:contain;
    background-repeat: no-repeat;
    background-position: center top;
  }  
}
@media (min-width: 769px) and (max-width: 1400px) {
  .ct-header-slider .item {
    height: auto;  
  }
}
@media (max-width: 1260px) {
  #dots-container {
    display: none;
  }
}
@media (min-width: 992px){
  .ct-footer2 .ct-newsletter {
    max-width: 100%;
  }
  #dots-container {
    bottom: 100px;
  } 
}
@media (min-width: 768px){
  .ct-searchbar:before {
    height: 92px;
    bottom: -1px;
  }
  .page-scrolled .navbar .navbar-nav li > * {
    min-height: 67px;
    height: 67px;
  }
  .page-scrolled .navbar .navbar-nav {
    height: 100%!important;
  }
  .ct-current-facts h2 {
    margin: 0 auto 0px;
  }
  .contentNews .ct-recent-news {
    flex-direction: inherit;
  }
  .contentFaq .faq_question .col-sm-11 {
    padding-right: 0px;
  }
  .peopleDetail h2 {
    margin-top: -5px;
  }
  .searchFilter .btn {
    min-width: 172px;  
  }
  .searchFilter .label-icon {
    display: inline-block;  
  }
  .searchFilter .glyphicon {
    margin-right: -5px;
  }
  .ct-header .ct-jumbotron {
    top: 0;
    margin-top: 5%;
  }
  .ct-header .ct-jumbotron h1 {
    font-size: 2.5em;
  }
  .ct-news.ct-news--bigger h3 {
    font-size: 41px;
    line-height: 1.4;
  }
}
@media (max-width: 768px){
  .ct-header .ct-jumbotron {  
    width: 80%;
    margin: 20px 10px;
    top: 40%;
    width: 50%;
  }
  .ct-header .ct-jumbotron .inner {
    max-width: 100%;
  }
  #dots-container {
    display: none;
  }
  .main-section {
    margin-top: -80px;
  }
  .searchFilter .dropdown-menu-right {
	right: 0px;
  }
}
h4
   {
       color:white;
       padding-left: 1000px;
   }
   body
{
 background-image:url("images/download.jpg");
 background-repeat:no-repeat;
 background-size:cover;
}
.col-sm-12
{width:70%;
margin-left:190px;}
* {
  box-sizing: border-box;
 
}

input[type=text], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 40px;
  resize: vertical;
  background-color:#E9E7E7;
}

input[type=password], input[type=email], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 40px;
  resize: vertical;
  background-color:#E9E7E7;
}


input[type=date], select, textarea {
  width: 70%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 40px;
  resize: vertical;
  background-color:#E9E7E7;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 40px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 40px;
  background-color:  #D4E6F1;
  padding: 20px;
}

.col-25 {
  float: left;
  padding-left:200px;
  width: 30%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  padding-left:200px;
  width: 70%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.head{
    background-image: linear-gradient(rgb(129, 131, 14),rgb(102, 146, 85));
    padding: 2%;
    text-align: center;
    color:aliceblue;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

</style>
</head>


</head>
<body>


<nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand" href="#"><img src="images/logo.png" height=30px></a>
          </div>
          <ul class="nav navbar-nav">
            <li class="active" ><h4>Welcome Admin</h4></li>
            
          </ul>
         <a href="index.html"> <button class="btn btn-success navbar-btn" style="float:right;">Logout</button></a>
        </div>
      </nav>
      <h2><center><b>SEARCH PATIENT'S DETAILS</b></center> </h2>
        <div class="container">
                <div class="row searchFilter" >
                   <div class="col-sm-12" >
                    <div class="input-group" >
                     <input id="table_filter" type="text" class="form-control" aria-label="Text input with segmented button dropdown" placeholder="Search by UserId or by Name" name="idd">
                     <div class="input-group-btn" >
                      <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><span class="label-icon" >Category</span> <span class="caret" >&nbsp;</span></button>
                      <div class="dropdown-menu dropdown-menu-right" >
                         <ul class="category_filters" >
                          <li >
                           <input type="radio" name="radios" id="User Id" value="User Id" ><label class="category-label" for="User Id" >User Id</label>
                          </li>
                          <li >
                           <input type="radio" name="radios" id="Name" value="Name" ><label class="category-label" for="Name" >Name</label>
                          </li>
                         </ul>
                      </div>
                      <button id="searchBtn" type="button" class="btn btn-secondary btn-search" ><span class="glyphicon glyphicon-search" >&nbsp;</span> <span class="label-icon" >Search</span></button>
                     </div>
                    </div>
                   </div>
                </div>
                <form action="/action_page.php">
                  <div class="row">
                    <div class="col-25">
                      <label for="uid"> User Id </label>
                    </div>
                    <div class="col-75">
                      <input type="text" id="uid" name="uid" placeholder="${patient.user_id}  " maxlength="6" readonly >
                    </div>
                  </div>
                  
                  <div class="row">
                    <div class="col-25">
                      <label for="name">Name</label>
                    </div>
                    <div class="col-75">
                      <input type="text" id="name" name="name" placeholder="${patient.patient_name}" readonly>
                      
                      <%--  <td><c:url var="updateLink" value="/patient/updatePersonalDetails"><c:param name="id" value="${patient.name }"></c:param></c:url>
						<a href="${updateLink}">update</a> --%>
                      
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-25">
                      <label for="rmn">Mobile Number</label>
                    </div>
                    <div class="col-75">
                      <input type="text" id="rmn" name="rmn"pattern="[0-9]{10}" placeholder="${patient.m_no}"readonly>
                    </div>
                  </div>
                  <div class="row">
                      <div class="col-25">
                            <label for="aadhar">Aadhar</label>
                      </div>
                      <div class="col-75">
                        <input type="text" id="aadhar" name="aadhar"  placeholder="${patient.aadhar_no}"readonly>
                      </div>
                  </div>
                            <div class="row">
                                  <div class="col-25">
                                    <label for="address">Address</label>
                                  </div>
                                  <div class="col-75">
                                    <input type="text" id="address" name="address" placeholder="${patient.address}" maxlength="50"readonly>
                                  </div>
                                </div>    
                                    
                  
                  <div class="row">
                    <div class="col-25">
                      <label for="Checkin Date">Checkin Date</label>
                    </div>
                    <div class="col-75">
                      <input type="text" id="inDate" name="inDate" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}"
                      placeholder="13.04.2018" readonly>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-25">
                      <label for="Checkout date">Checkout Date</label>
                    </div>
                    <div class="col-75">
                      <input type="text" id="outDate" name="outDate" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" placeholder="30.04.2018"readonly>
                    </div>
                  </div>
                  <div class="row">
                      <div class="col-25">
                            <label for="Disease">Disease</label>
                      </div>
                      <div class="col-75">
                        <input type="text" id="Disease" name="Disease"   maxlength="100" placeholder="xyz"readonly>
                      </div>
                  </div>
                  <div class="row">
                          <div class="col-25">
                                <label for="Treatment Status">Treatment Status</label>
                          </div>
                          <div class="col-75">
                                  <select required>
                                          <option value="" disabled selected>Select Status</option>
                                          <option value="Ongoing">Ongoing</option>
                                          <option value="Complete">Complete</option>
                                        </select>
                          </div>
                      </div>
                      <div class="row">
                              <div class="col-25">
                                    <label for="Name Of Doctor">Name Of Doctor</label>
                              </div>
                              <div class="col-75">
                                      <select required>
                                              <option value="" disabled selected>Select Doctor's Name</option>
                                              <option value="Dr. Suresh Bhatia">Dr. Suresh Bhatia</option>
                                              <option value="Dr. Tarun Nagpal">Dr. Tarun Nagpal</option>
                                              <option value="Dr. Manoj Jain">Dr. Manoj Jain</option>
                                              <option value="Dr. Aashi Akriti">Dr. Aashi Akriti</option>
                                              <option value="Dr. Ravindra Kumar">Dr. Ravindra Kumar</option>
                                            </select>
                              </div>
                          </div>
                            <div class="row">
                                  <div class="col-25">
                                    <label for="Height">Height(in cms)</label>
                                  </div>
                                  <div class="col-75">
                                    <input type="text" id="Height" name="Height" placeholder="Height" maxlength="3"readonly>
                                  </div>
                                </div>    
                                <div class="row">
                                      <div class="col-25">
                                        <label for="Weight">Weight(in kg)</label>
                                      </div>
                                      <div class="col-75">
                                        <input type="text" id="Weight" name="Weight" placeholder="Weight" maxlength="3"readonly>
                                      </div>
                                    </div>   
                                    <div class="row">
                                          <div class="col-25">
                                            <label for="Blood Group">Blood Group</label>
                                          </div>
                                          <div class="col-75">
                                            <input type="text" id="Blood_Group" name="Blood_Group" placeholder="Blood Group" maxlength="3"readonly>
                                          </div>
                                        </div>   
                                        <div class="row">
                                              <div class="col-25">
                                                <label for="Bed Number">Bed Number</label>
                                              </div>
                                              <div class="col-75">
                                                <input type="text" id="Bed Number" name="Bed_Number" placeholder="Bed Number" readonly>
                                              </div>
                                            </div>   
                                            <div class="row">
                                                  <div class="col-25">
                                                        <label for="Seriousness">Seriousness</label>
                                                  </div>
                                                  <div class="col-75">
                                                          <select required>
                                                                  
                                                                  <option value="Major">Major</option>
                                                                  <option value="Minor">Minor</option>
                                                                  <option value="Neutral">Neutral</option>
                                                                 
                                                                </select>
                                                  </div>
                                <br>  <br>     <br>  <br>    <br> 
                                <br>      
                                
                  
              </div>
              



</body>
</html>