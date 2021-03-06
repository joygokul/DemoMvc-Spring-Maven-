<html>


<header>
<title>Student</title>
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
.ma {
    margin-top: 80px;
}
body {
    background-color: #F3E0FF;
}



</style>  
<script>

$(document).ready(function(){

	
	$('#find').click(function(e){
	        
		var search=$("#search").val();
              
		alert(search);
	
		$.ajax({
		type: 'GET',
		dataType: 'json',
		contentType: 'application/json',
		url: "ListSearch/"+search+"",
	
		success: function(data, textStatus ){
		console.log(data);
		//alert("success");
		//alert(data[0].name);
		$("#name").val(data[0].name);
		$("#degree").val(data[0].degree);
		$("#phone").val(data[0].phone);
		$("#address").val(data[0].address);
		$("#search").val("")
		},
		error: function(xhr, textStatus, errorThrown){
		//alert('request failed'+errorThrown);
		}
		
		});
 
	});

});


</script>

</header>

<body>

<div class="container">


<div class="col-sm-12">


<div class="col-sm-2"></div>
<div class="col-sm-8 ma">

  <div class="panel panel-default">
    <div class="panel-heading">	
                          
                        <div class="col-sm-7"></div>
                        
                         <div class="col-sm-3">
                        	<input type="text"   name="search" id="search" placeholder="Enter your name" 
								class="form-control pull-right" 
								/>
						   </div>
						   <div class="col-sm-2">
                                 <input type="submit"  value="search"  id="find"  class="btn btn-info" />
	              
                      	   </div>
                           	<br>
                        
                    </div>
					
<form id="studentForm" modelAttribute="student" action="StudentSave" method="post" commandname="student">
 
    <div class="panel-body">
	
	     <div class="form-group">
						<label class="col-sm-1 control-label" >Name</label>
						<div class="col-sm-4">
							<input type="text"   name="name" id="name" placeholder="Enter your name"
								class="form-control"  value='${name}'/>
						</div>
						
		</div>
	
	  <br><br>
	
	    <div class="form-group">
						<label class="col-sm-1 control-label" >Degree</label>
						<div class="col-sm-4">
							<input type="text"   name="degree" id="degree" placeholder="Degree"
								class="form-control"  />
						</div>
		</div>
	
	  <br><br>
	
	    
	    <div class="form-group">
						<label class="col-sm-1 control-label" >Phone</label>
						<div class="col-sm-4">
							<input type="number"   name="phone" id="phone" placeholder=" your moble number"
								class="form-control" />
						</div>
		</div>
		
		
		<br><br>
		
		 <div class="form-group">
						<label class="col-sm-1 control-label" >address</label>
						<div class="col-sm-4">
							<input type="text"   name="address" id="address" placeholder="Your address"
								class="form-control"  />
						</div>
		</div>
	    
	   <br><br>
	
	   <div class="form-group">
	     
	         <div class="col-sm-10">
	     
	               <input type="submit" name="action" value="save"  class="btn btn-info"/>
	                   <input type="submit" name="action" value="update"  class="btn btn-info"/>
	                    <input type="submit" name="action" value="delete"  class="btn btn-info"/>
	              
	                       
		       </div>				
        </div>								
								
						
		</div>
	           
	 </form>
	           
	              
	</div>
	 
  </div>
 	              
</div>

<div class="col-sm-2"></div>

</div>




</body>




</html>