<jsp:include page="header.jsp"></jsp:include>


<head>
<script>
	var request;
	function sendInfo() {

		var from = document.myform.from.value;
		var to = document.myform.to.value;

		var url = "findservices.jsp?from=" + from + "&to=" + to;
		if (window.XMLHttpRequest) {
			request = new XMLHttpRequest();
		} else if (window.ActiveXObject) {
			request = new ActiveXObject("Microsoft.XMLHTTP");
		}
		try {
			request.onreadystatechange = getInfo;
			request.open("GET", url, true);
			request.send();
		} catch (e) {
			alert("Unable to connect to server");
		}
	}

	function getInfo() {
		if (request.readyState == 4) {
			var val = request.responseText;
			document.getElementById('right').innerHTML = val;
		}
	}
</script>
</head>



<div id="gbox-bg">
	<div id="gbox-grd">
		<h2>WELCOME TO OUR TRUCK TRACKING COMPANY</h2>




		<form name="myform">
			<table>
				<tr>
					<td>Route-From:<select name="from" id="select"
						onchange="sendInfo()">
							<option>Select a Branch</option>
							<option>Ghaziabad</option>
							<option>Kanpur</option>
							<option>Delhi</option>
							<option>Agra</option>
					</select></td>
					<td>To:<select name="to" id="select" onchange="sendInfo()">
							<option>Select a Branch</option>
							<option>Ghaziabad</option>
							<option>Kanpur</option>
							<option>Delhi</option>
							<option>Agra</option>
					</select></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>
			</table>
			<div id="right"></div>
		</form>
		<br />
	<div id="features">
									<h2>FEATURED SERVICES</h2>
									<ul>
										<li><a href="ritruck.jsp">RECENTLY INSTALLED TRUCKS</a></li>
										<li><a href="status.jsp">STATUS</a></li>
										<li><a href="towards.jsp">TOWARDS HERE</a></li>
									</ul>
									<ul>
										<li><a href="services.jsp">SERVICES</a></li>
										<li><a href="contactus.jsp">CONTACT US</a></li>
									</ul>
									<div class="clear"></div>
								</div>


		<div class="clear"></div>

	</div>
</div>
<jsp:include page="footer.html"></jsp:include>