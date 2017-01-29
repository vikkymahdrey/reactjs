<%@page import="java.util.*"%>
<%@page import="com.team.mighty.domain.*"%>
<%@page import="org.displaytag.decorator.TotalTableDecorator"%>
<%@page import="org.displaytag.decorator.MultilevelTotalTableDecorator"%>
<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@ page buffer = "900kb" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>

<!DOCTYPE html >
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Allergies Report</title>
<link rel="stylesheet" href="css/displaytag.css" media="all">
<link rel="stylesheet" href="css/style.css">
<!-- <link rel="stylesheet" href="css/style1.css">
<link rel="stylesheet" href="css/style2.css"> --> 
<script type="text/javascript" src="js/jquery-latest.js"></script>
<script  src="https://code.jquery.com/jquery-2.2.0.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/custom_siemens.css" rel="stylesheet">
  

<script type="text/javascript" src="js/jquery-latest.js"></script>

  <!-- React Application --> 
	<script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>  
	<script src="https://fb.me/react-15.3.0.min.js"></script>
    <script src="https://fb.me/react-dom-15.3.0.min.js"></script>
    <script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>
 
  	<script type="text/babel">
	var Allergy = React.createClass({
  	render: function() {
    return (
	 
	<div className="wrapper">
		<Header/>
		
	
		<div className="header-wrap">

			<div className="container">
	
				<div className="row">
					 {/*<img  alt="" src="images/medical.png" 
        	style="width: 60px; height: 50px; object-fit: cover;"> </img>*/}	
				<div className="col-sm-12 text-right">
					<img src="images/user_iocn_header.png" />&nbsp;Welcome  Medical Team  &nbsp;&nbsp;&nbsp;<a href="logout"><img src="images/logout_icon_header.png" />&nbsp;Log Out</a>
				</div>
				
				</div>
										
			</div>
		</div>
	 
   	
 

	<div className="main-page-container">
		<div className="container">	
		
			<div className="row">
				<div className="col-sm-12">
				
				<div className="breadcrumb-wrap">
					<a href="adminHome"><img src="images/home.png" /></a>
					<a href="#" className="current" ><b>Allergies </b></a>
					<a href="medicationInfo" ><b>Medication</b></a>
										
				</div>

				<div>
					<div class="section-heading">
								<div class="row">
									<div class="col-sm-12 bold">
										<b><u>Allergies Report</u></b>
									</div>
								</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</div>

 );
 	 }
	});


{/*Header*/}
var Header = React.createClass({
  	render: function() {
    return (
       
 				<div id="PageContainer"> 
    		
          			<div className="grid grid--no-gutters grid--table site-header__inner">
            			<div className="grid__item small--hide medium-up--one-third">
           				</div>
           					 <div className="grid__item one-third">
					             <div className="site-header__logo h1" itemscope itemtype="http://schema.org/Organization">
								 

               					 {/* <a href="http://......com/"> 
                					 <img id="comp-iw92x8m0imgimage" alt="" src="images/medical.png" 
        	style="width: 110px; height: 130px; object-fit: cover;" 
        	data-reactid=".0.$SITE_ROOT.$desktop_siteRoot.$PAGES_CONTAINER.1.1.$SITE_PAGES.$cjg9.1.$comp-iw92x8m0.0.0.$image" />
								 </a> */}
                

              					</div>
          					 </div>
                    </div>
       		
	     
   	 
   	
		</div>
			
 );
}
});

{/*Footer*/}
var Footer = React.createClass({
  	render: function() {
    return (
         
			<div className="footer-wrap">
					<div className="row">
					<div className="col-sm-12 text-center">
							 <p className="text-12"><b>All Content © 2016 Medical, Inc.</b></p>
 					</div>
					</div>
					
			</div>

		
 );
}
});

ReactDOM.render(
  <Allergy />,
  document.getElementById('allergy')
);

</script>
</head>
<body>
<div id="allergy"></div>
		
	
					

</body>
</html>