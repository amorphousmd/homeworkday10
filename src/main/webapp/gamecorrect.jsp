<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game đoán số</title>
</head>
<body>
	<div style="height: 80vh; display: table; width: 100%;">
  		<div style="display: table-row;">
    		<div style="display: table-cell; vertical-align: middle; text-align: center;">
    			<pre id="taag_output_text" style="float:center;" class="fig" contenteditable="true">   _____                            _         _       _   _                 
  / ____|                          | |       | |     | | (_)                
 | |     ___  _ __   __ _ _ __ __ _| |_ _   _| | __ _| |_ _  ___  _ __  ___ 
 | |    / _ \| '_ \ / _` | '__/ _` | __| | | | |/ _` | __| |/ _ \| '_ \/ __|
 | |___| (_) | | | | (_| | | | (_| | |_| |_| | | (_| | |_| | (_) | | | \__ \
  \_____\___/|_| |_|\__, |_|  \__,_|\__|\__,_|_|\__,_|\__|_|\___/|_| |_|___/
                     __/ |                                                  
                    |___/                                                   </pre>
                    <br>
				<form action="http://localhost:8080/homeworkday10/game" method="post">
					<button style="width: 200px;
					      height: 80px;
					      font-size: 40px;
					      padding: 8px;
					      margin: 8px;
					      box-sizing: border-box;"> Chơi lại
	      			</button>
				</form>
				<form action="http://localhost:8080/homeworkday10/leaderboard">
					<button type ="submit" style="width: 200px;
					      height: 80px;
					      font-size: 40px;
					      padding: 8px;
					      margin: 8px;
					      box-sizing: border-box;"> Xếp hạng
	      			</button>
				</form>
    		</div>
  		</div>
	</div>
</body>
</html>