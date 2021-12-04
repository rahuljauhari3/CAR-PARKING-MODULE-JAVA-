<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*,java.net.URL,java.net.URLEncoder,javax.net.ssl.HttpsURLConnection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="AdminBoostrap.css">
    <link rel="stylesheet" href="Admin.css">
    <title>Parking Lot</title>
</head>
<body style="background-color:whitesmoke;">
    <body style="background-color:whitesmoke;">
    <div id="bgimg">
        <header class="shadow">
            <div class="header-content d-flex justify-content-center p-2">
                <img src="parking.svg" alt="" id="header-logo">
                <div id="header-msg" class="ml-5 align-self-center">Admin Access</div>
            </div>
        </header>
        <div class="sideme">
            <a id="imgone" href="#parkingTable">CAR</a>
            <a id="imgtwo" href="#workerTable">WORKER</a>
            <a id="imgthree" href="#placeTable">PLACE</a>
        </div>
        <div class="form-container mt-5">
        
        /
        
        
        
        
        
            <form class="w-90 mx-auto" method="post" action="./InsertCar.jsp">
                <h5 class="text-center">Add Car to Parking Lot</h5>
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="name" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="name">LastName:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="lastname" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="car">Car:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="car" placeholder="Car">
                </div>
                <div class="form-group">
                    <label for="licensePlate">License Plate:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="LicensePlate"
                        placeholder="NN-NN-LL,NN-LL-NN,....etc">
                </div>
                <div class="row">
                    <div class="col-6">
                        <label for="entryDate">Entry Date:</label>
                        <input type="date" class="form-control rounded-3 shadow-sm" name="entryDate">
                    </div>
                    <div class="col-6">
                        <label for="exitDate">Exit Date:</label>
                        <input type="date" class="form-control rounded-3 shadow-sm" name="exitDate">
                    </div>
                </div>
                <div class="row">
                    <div class="col-6">
                        <label for="carentrytime">Entry Time:</label>
                        <input type="time" class="form-control rounded-3 shadow-sm" name="entrytime">
                    </div>
                    <div class="col-6">
                        <label for="carexittime">Exit Time:</label>
                        <input type="time" class="form-control rounded-3 shadow-sm" name="exittime">
                    </div>
                </div>
                <button type="submit" class="btn mx-auto d-inline mt-5 rounded-5 shadow" name="Submit">Add Car</button>
                
            </form>
        </div>
        
        
        
        
        
        
        
        <div class="form-container mt-5">
            <form class="w-90 mx-auto" method="post" action="./AddWorkers.jsp">
                <h5 class="text-center">Add Worker</h5>
                <div class="form-group">
                    <label for="workername">Worker Name:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="workername" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="workeremail">Worker Email:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="workeremail" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="dutyhours">Duty Hours:</label>
                    <input type="number" class="form-control rounded-3 shadow-sm" name="dutyhours" placeholder="Hours">
                </div>
                <div class="form-group">
                    <label for="salary">Salary:</label>
                    <input type="number" class="form-control rounded-3 shadow-sm" name="salary" placeholder="Amount">
                </div>
                <div class="row">
                    <div class="col-6">
                        <label for="entrytime">Entry Time:</label>
                        <input type="time" class="form-control rounded-3 shadow-sm" name="entrytime">
                    </div>
                    <div class="col-6">
                        <label for="exittime">Exit Time:</label>
                        <input type="time" class="form-control rounded-3 shadow-sm" name="exittime">
                    </div>
                </div>
                <button type="submit" class="btn mx-auto d-inline mt-5 rounded-5 shadow" >Add Worker
                    </button>
            </form>
            
            <form class="w-90 mx-auto" method="post" action="./RemoveWorker.jsp">
            <div class="form-group">
                    <label for="placename">Worker Name:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="workername" placeholder="Name">
                </div>
            <button type="submit" class="btn mx-auto d-inline mt-5 rounded-5 shadow">Remove Worker
                    </button>
                    </form>	
        </div>
        
        
        
        
        
        
        <div class="form-container mt-5">
            <form class="w-90 mx-auto" method="post" action="./InsertPlaces.jsp">
                <h5 class="text-center">Add Place</h5>
                <div class="form-group">
                    <label for="placename">Place Name:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="placename" placeholder="Place">
                </div>
                <div class="form-group">
                    <label for="cityname">City:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="cityname" placeholder="City">
                </div>
                <div class="form-group">
                    <label for="pincode">Pincode:</label>
                    <input type="number" class="form-control rounded-3 shadow-sm" name="pincode" placeholder="000000">
                </div>
                <div class="form-group">
                    <label for="adress">Adress:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="adress" placeholder="Adress">
                </div>
                <div class="form-group">
                    <label for="noofparking">No of Parking Slots:</label>
                    <input type="number" class="form-control rounded-3 shadow-sm" name="spaces" placeholder="10">
                </div>
                <button type="submit" class="btn mx-auto d-inline mt-5 rounded-5 shadow">Add Place
                    </button>
            </form>
            
            
            
            <form class="w-90 mx-auto" method="post" action="./DeletePlaces.jsp">
            <div class="form-group">
                    <label for="placename">Place Name:</label>
                    <input type="text" class="form-control rounded-3 shadow-sm" name="placename" placeholder="Place">
                </div>
            <button type="submit" class="btn mx-auto d-inline mt-5 rounded-5 shadow">Remove Place
                    </button>
                    </form>	
                    
	        </div>
	        
	        
	        
	        
	        
	        
	        
	        
        <div class="table-container mt-5 mb-5 w-75 mx-auto">
            <h5 class="text-center mb-3">List of Cars in Parking Lot</h5>
            <input type="text" class="w-100 mb-3" id="searchInput" placeholder="Search...">
            <table class="table table-striped shadow " id="parkingTable">
                <thead class="text-white" id="tableHead">
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">LicensePlate</th>
                        <th scope="col">Place</th>
                        <th scope="col">Entry Date</th>
                        <th scope="col">Exit Date</th>
                        <th scope="col">Entry Time</th>
                        <th scope="col">Exit Time</th>
                    </tr>
                </thead>
<%
					try {


						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/userdb", "root", "root");
						Statement st = conn.createStatement();
						ResultSet i = st.executeQuery("SELECT * from members ");
						out.println("<table style='width:100%'><tr><th>Name</th><th>LicensePlate</th><th>EntryDate</th><th>ExitDate</th><th>EntryTime</th><th>Exittime</th></tr>");
						while(i.next()) {
							String str1 = i.getString("Name");
							String str2 = i.getString("LicensePlate");
							String str3 = i.getString("EntryDate");
							String str4 = i.getString("ExitDate");
							String str5 = i.getString("EntryTime");
							String str6 = i.getString("Exittime");
							out.println("<tr><th>"+str1+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th></tr>"+str5+ "</th></tr>"+str6+ "</th></tr>");
							
						}
						
						out.println("</table>");
					}
					
					catch (Exception e) {
						System.out.println(e.toString());
					}
					
					%>
            </table>
        </div>
        <div class="table-container mt-5 mb-5 w-75 mx-auto">
            <h5 class="text-center mb-3">List of Workers</h5>
            <input type="text" class="w-100 mb-3" id="searchInput" placeholder="Search...">
            <table class="table table-striped shadow " id="workerTable">
                <thead class="text-white" id="tableHead">
                    <tr>
                        <th scope="col">Worker</th>
                        <th scope="col">Place</th>
                        <th scope="col">Duty Hours</th>
                        <th scope="col">Entry Time</th>
                        <th scope="col">Exit Time</th>
                    </tr>
                </thead>

            </table>
        </div>
        <div class="table-container mt-5 mb-5 w-75 mx-auto">
            <h5 class="text-center mb-3">List of Parking Places</h5>
            <input type="text" class="w-100 mb-3" id="searchInput" placeholder="Search...">
            <table class="table table-striped shadow " id="placeTable">
                <thead class="text-white" id="tableHead">
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">City</th>
                        <th scope="col">Pincode</th>
                        <th scope="col">Slots</th>
                        <th scope="col">Available</th>
                    </tr>
                </thead>

            </table>
        </div>
        <script src="./JS/bootstrap.min.js"></script>
        <script src="./JS/core.js"></script>
    </div>					
					<%
					try {


						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql:// localhost:3306/userdb", "root", "root");
						Statement st = conn.createStatement();
						ResultSet i = st.executeQuery("SELECT * from workers ");
						out.println("<table style='width:100%'><tr><th>WorkerName</th><th>WorkerRating</th><th>Email</th><th>Password</th></tr>");
						while(i.next()) {
							String str1 = i.getString("WorkerName");
							String str2 = i.getString("WorkerRating");
							String str3 = i.getString("Email");
							String str4 = i.getString("Pass");
							
							out.println("<tr><th>"+str1+ "</th><th>"+str2+ "</th><th>"+str3+"</th><th>"+str4+ "</th></tr>");
							
						}
						
						out.println("</table>");
					}
					
					catch (Exception e) {
						System.out.println(e.toString());
					}
					
					%>
						
  				
					

</div>
</body>
</html>