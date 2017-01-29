<%@page import="java.util.*"%>
<%@page import="com.team.mighty.domain.*"%>
<%@page import="org.displaytag.decorator.TotalTableDecorator"%>
<%@page import="org.displaytag.decorator.MultilevelTotalTableDecorator"%>
<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@ page buffer = "900kb" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Medication Home</title>
    
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom_siemens.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/custom.css" rel="stylesheet">
    
    
	<script type="text/javascript" src="js/jquery-latest.js"></script>
	 <script src="js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
   
    
      <!-- React Application --> 
	<script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>  
	<script src="https://fb.me/react-15.3.0.min.js"></script>
    <script src="https://fb.me/react-dom-15.3.0.min.js"></script>
    <script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>
 
  	<script type="text/babel">

	class Medication extends React.Component{
		constructor() {
       	super();
        this.state = { data: [] };
 				
		};

componentDidMount(){
fetch('http://localhost:8088/MedicalPortal/getMedication', { 
	    method: 'GET',
		headers: {'Content-Type': 'application/json'}
        }).then(function(response) {

				console.log(response.headers.get('Content-Type'));
 				console.log(response.headers.get('Date'));
  				console.log(response.status);
 				console.log(response.statusText);
       	   return response.json();
      }).then( (json) => {
                        this.setState({data: json});
        }).then(function(body) {
		     console.log(body);
				//alert(eval(JSON.stringify(body)));
				//alert(JSON.parse(JSON.stringify(body)));
		return body;
      }).catch(function(ex) {
    	     console.log('parsing failed', ex)
  	  });



}; 



  	render() {
    return (
         <div>

	<div className="wrapper">
		<div className="header-wrap">
			<div className="container">
				<div className="row">
					
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
					<a href="adminHome" ><b>My Information </b></a>
					<a href="fetchAllergies"><b>Allergies </b></a>
					<a href="#" className="current"><b>Medication</b></a>
										
				</div>
				
				
				</div>
	
			</div>
		</div>
		<div className="container">
		  <div className="row">
			<div className="col-sm-12">
				<div className="breadcrumb-wrap">
			<table className="table table-striped">
				<thead>
      				<tr>
        				<th>MedicationName</th>
        				<th>MedicationType</th>
        				<th>CreatedDate</th>
						<th>EffectiveDate</th>
      			    </tr>
    			</thead>
               <tbody>
                  {this.state.data.map((medication, i) => <TableRow key = {i} data = {medication} />)}
               </tbody>
            </table>
		</div>
</div>
</div>
	</div>
	</div>
</div>


</div>
		
      );
 	 }
	}

class TableRow extends React.Component{
  	render() {
    return (
 		<tr>
            <td>{this.props.data.MedicationName}</td>
            <td>{this.props.data.MedicationType}</td>
			<td>{this.props.data.CreatedDate}</td>
			<td>{this.props.data.EffectiveDate}</td>
         </tr>
);
 	 }
	};





ReactDOM.render(
  <Medication />,
  document.getElementById('medicationApp')
);


	</script>    

  </head>
  
  <body>
  		
	<div id="medicationApp"></div>						 

  </body>
</html>
