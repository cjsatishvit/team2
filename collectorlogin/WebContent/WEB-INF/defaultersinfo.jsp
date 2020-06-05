<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Management</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class = "container">
		<div class = "row">
		<h2>COLLECTION MANAGEMENT </h2>
			<a href="#" data-toggle="modal" data-target="#MyModal">DEFAULTER'S DETAILS&nbsp;&nbsp;<span class="glyphicon glyphicon-log-in alert-info"></span></a>
                <div id="MyModal" class="modal fade" role="dialog">
					<div class="modal-dialog">
						<div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Collection Management</h4>
							</div>
                           	<div class="modal-body">
                           	<fieldset>
                           	<h4>Generate final report</h4>
                           	<h5>
                           		<table style="width:100%; border:1px solid blue; cell-padding: 1px; align:center" class="table table-bordered  table-hover table-responsive">
                           			<tr>
                           				<td>Defaulter 1 <a href="#"><span class="glyphicon glyphicon-log-in"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Customer_details.html"><span class="badge alert-info">info</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"></td>
									</tr>
									<tr>
                           				<td>Defaulter 2 <a href="#"><span class="glyphicon glyphicon-log-in"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span class="badge alert-info">info</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"></td>
									</tr>
									<tr>
                           				<td>Defaulter 3<a href="#"><span class="glyphicon glyphicon-log-in"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span class="badge alert-info">info</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"></td>
									</tr>
									<tr>
                           				<td>Defaulter 4 <a href="#"><span class="glyphicon glyphicon-log-in"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span class="badge alert-info">info</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"></td>
									</tr>
									<tr>
                           				<td>Defaulter 5 <a href="#"><span class="glyphicon glyphicon-log-in"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span class="badge alert-info">info</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"></td>
									</tr>
									<tr>
                           				<td>Defaulter 6<a href="#"><span class="glyphicon glyphicon-log-in"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span class="badge alert-info">info</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"></td>
									</tr>
									<tr>
                           				<td>Defaulter 7<a href="#"><span class="glyphicon glyphicon-log-in"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span class="badge alert-info">info</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"></td>
									</tr>
									<tr>
                           				<td>Defaulter 8<a href="#"><span class="glyphicon glyphicon-log-in"></span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span class="badge alert-info">info</span></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox"></td>
									</tr>
                           		</table>
                           		</h5>
                             </fieldset>      
                             <div class="modal-footer">
                            	<button type="button" class="btn btn-success" data-dismiss="modal">Send</button>
					    	 </div>
                            </div>
                         </div>
                      </div>		
				</div>
		</div>
	</div>
</body>
</html>