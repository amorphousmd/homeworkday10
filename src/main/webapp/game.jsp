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
      			<p style="font-family: Helvetica; font-size: 60px;">Game đoán số</p>
    		</div>
		</div>
  		<div style="display: table-row;">
    		<div style="display: table-cell; vertical-align: middle; text-align: center;">
				<form action="http://localhost:8080/homeworkday10/game" method="post">
					<input type="text" name="guessedNumber" style="width: 300px;
					      height: 40px;
					      font-size: 20px;
					      padding: 8px;
					      box-sizing: border-box;
					      margin-bottom: 8px;"
					      placeholder="Nhập số nguyên (1-1000)"/>
					<br/>
					<button style="width: 100px;
					      height: 40px;
					      font-size: 20px;
					      padding: 8px;
					      box-sizing: border-box;"> Đoán
	      			</button>
				</form>
    		</div>
  		</div>
	</div>
</body>
</html>