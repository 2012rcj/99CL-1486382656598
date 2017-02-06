

<!DOCTYPE HTML>
<html lang="ru-RU">
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="build/kalendae.css" type="text/css" charset="utf-8">
	
<!-- <script src="src/moment.js" type="text/javascript" charset="utf-8"></script>
	<script src="build/kalendae.js" type="text/javascript" charset="utf-8"></script> -->
	<script src="build/kalendae.standalone.js" type="text/javascript" charset="utf-8"></script>
	</head>
	
	<style>
	section.top{
	padding-top:30px;
	display:block;
	width:80%;
	margin-left: auto;
    margin-right: auto;
	}
	
	div.bottom{
	font-weight: bold;
	padding-left: 25px;
	padding-bottom: 40px;
	}
	
	.kalendae{
	display:block;
	margin-left: auto;
    margin-right: auto;
	background: #FDF3E7;
	padding-top: 10px;
	border-radius: 0px;
	width:80%;
	padding-left: 27%;
	}
	h1{
	text-shadow: 0 0 3px #FF0000;
 
	}
	body {background-color: #C63D0F;}
	table {background-color: #FDF3E7;}
	
	#nav ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

#nav li {
    float: left;
    
}

#nav li:last-child {
    border-right: none;
}

#nav li a {
	
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

#nav li a:hover:not(.active) {
    background-color: #111;
}

#nav .active {
    background-color: #C63D0F;
}

.button {
    background-color: #C63D0F; /* Button CSS */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
	border-radius: 12px;
}

.button:hover{
background-color: #a22a00;
}
	</style>
	
<body>
	
	
  <section class="top">
  <table width="100%" align="center"><tr>
  <td ><img src="office_logo.jpg" alt="99Logo" style="width:262;height:100; padding-left: 116px"></td>
        <td style="text-align: right;padding-right: 116px">  
		<h1> Welcome User </h1> 
        <br>
        
        </td></tr>
		
	 <tr>
            <td colspan="3"  bgcolor="#333">
               
                
			<ul id="nav" style="list-style-type: none; float:right"  >
  <li><a class="active" href="Login.jsp">Home</a></li>
  <li><a href="Sign_Out.jsp">Sign Out</a></li>
 
</ul>
                <ul id="nav" style="list-style-type: none; float:left">
                    <li><a href="apply.jsp">Apply</a></li>
                    <li><a href="cancel.jsp">Cancel</a></li>
                    <li><a href="calendar.html">Holiday Calendar</a></li>
                    <li><a href="Sign_Out.jsp">Leave Summary</a></li>
                    
                </ul>
                
                
			</td>
            
    </tr>
		</table>	</section>

	<script type="text/javascript" charset="utf-8">
		
		var currentAvailed =0;
		var k = new Kalendae({
			attachTo:document.body,
			months:2,
			mode:'multiple',
			//direction: 'future',
			//selected:[Kalendae.moment()],
			
		});

	
		console.log(k.getSelected());
		
		k.subscribe('change', function () {
   var selectedDates = this.getSelectedAsText();
   document.getElementById("count").innerHTML = selectedDates.length;
   
	if(selectedDates.length<= document.getElementById("total").innerHTML){
   var availed = document.getElementById("availed");
   availed.innerHTML = selectedDates.length;
   currentAvailed = selectedDates.length;
   } 
   
   var remaining = document.getElementById("total").innerHTML;
   
   document.getElementById("remaining").innerHTML = document.getElementById("total").innerHTML - document.getElementById("availed").innerHTML;
   
   
   
});

function reset(){
		var temp =  document.getElementById("total").innerHTML - currentAvailed;
		if(temp<0){
		temp = 0
		}
		document.getElementById("remaining").innerHTML = temp;
		
		if(currentAvailed>document.getElementById("total").innerHTML){
		document.getElementById("availed").innerHTML = document.getElementById("total").innerHTML;
		}else{
				document.getElementById("availed").innerHTML = currentAvailed;	
			}
		}


	</script>

	  	<section class="top" style="background-color:#FDF3E7; padding-top:10px;">
		<div class="bottom">
		<p style="padding-left:245px">Types of Leave:
              
       <select name="types" id="type" onchange="option()">
           <option>Select</option>
           <option id="sick" >Sick Leave</option>
               <option id="annual">Annual Leave</option>
               <option id="official">Official Leave</option>
               
               </select>
		<script>
		
			
		function option(){
	
	var x = document.getElementById("type").selectedIndex;
    var y = document.getElementById("type").options;
   	var total;
			 if (x==1) {
		
        total = 4;
		
    } else
				 if (x==2) {
		
        total = 14;
		
    } else {
		
		total = 14;
		
}
	document.getElementById("total").innerHTML = total;
	document.getElementById("remaining").innerHTML = total;	
	reset();
		}
		</script>
       &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
	   Number of days selected: <span id="count"></span>       
       </p>
		<p>Carry forward :0<br/></p>
        <p>Seniority Leaves :0<br/></p>
		<p>Total Leave:&nbsp&nbsp<span id="total" ></span></p>
 
       
		
        
        <p>Leaves Availed:&nbsp&nbsp<span id="availed" >0</span></p>
   
        <p>Leaves Remaining:&nbsp&nbsp<span id="remaining"></span></p>
        
        <p>Reason of Leave:<input type="text" id="Reason" name="leave"></p>
		<center><button type="button" class="button" onclick="alert('Working...')">Apply</button><center>
		</div>
		</section>
		</body>
		</html>
		