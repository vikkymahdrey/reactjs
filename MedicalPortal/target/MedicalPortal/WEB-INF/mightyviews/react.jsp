<!DOCTYPE html>
<html lang = "en">

   <head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Medical React App</title>
    
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/custom.css" rel="stylesheet">
    
  	<!--  <link href="//cdn.shopify.com/s/files/1/1198/3830/t/6/assets/theme.scss.css?10713448530586305152" rel="stylesheet" type="text/css" media="all" />
	<link href="//cdn.shopify.com/s/files/1/1198/3830/t/6/assets/unslider.css?10713448530586305152" rel="stylesheet" type="text/css" media="all" />
    <link href="//cdn.shopify.com/s/files/1/1198/3830/t/6/assets/unslider-dots.css?10713448530586305152" rel="stylesheet" type="text/css" media="all" />
  	<link href="//cdn.shopify.com/s/files/1/1198/3830/t/6/assets/custom.scss.css?10713448530586305152" rel="stylesheet" type="text/css" media="all" />
	 -->  
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script> 
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
		     
   	 <!-- React Application --> 
	<script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>  
	<script src="https://fb.me/react-15.3.0.min.js"></script>
    <script src="https://fb.me/react-dom-15.3.0.min.js"></script>
    <script src="https://npmcdn.com/babel-core@5.8.38/browser.min.js"></script>
    
  	<script type="text/babel">
	var App = React.createClass({
  	render: function() {
    return (
        <div className="wrapper">
		 <Header/>
		  
	<div className="container">
		<div className="login-input-wrap">
			<div className="login-input-border-wrap">
			<form action="login" name="user_validation_form" id="user_validation_form" method="post">
				<div className="row">
					<div className="col-sm-12">
					<h6 className="text-regular text-uppercase" ><b><i>Please Login</i></b></h6>
						
						<input type="text" name="uname" ref="uname" id="uname" placeholder="Login ID" className="form-control login-fields username mar-top-20" />
						<input type="password" name="pass" ref="pass" id="pass" placeholder="Password"  className="form-control login-fields password mar-top-10" />
						
					</div>
				</div>
				
				<div className="row">
					<div className="col-sm-6 mar-top-25">
						<a href="#" className="text-grey link-underline">Forgot Password?</a>
					</div>
					
					<div className="col-sm-6 mar-top-20 text-right">
						<input type="submit" value="Login" className="btn btn-blue"/>
					</div>
					
					
				</div>	
			</form>		
			</div>
		</div>
	</div>
</div>
			
         
      );
  }
});


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

ReactDOM.render(
  <App />,
  document.getElementById('app')
);

  	</script> 

   </head>




   <body >
         <div id ="app"></div>
         
   </body>
   
   

</html>