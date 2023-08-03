<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bảng xếp hạng</title>
</head>
<body>
	<div style="height: 80vh; display: table; width: 100%;">
  		<div style="display: table-row; height: 30%">
    		<div style="display: table-cell; vertical-align: middle; text-align: center;">
      			<p style="font-family: Helvetica; font-size: 60px;">Bảng xếp hạng</p>
    		</div>
		</div>
  		<div style="display: table-row;">
    		<div style="display: table-cell; vertical-align: middle; text-align: center;">
			<c:forEach items="${list}" var="item">
	 			<p style="font-family: Helvetica; font-size: 25px;">
	 			Lần thử:
	 			<c:out value="${item[0]}"></c:out>
	 			Số lần đoán: 
	 			<c:out value="${item[1]}"></c:out>
	 			<br>
	 			</p>	
	 		</c:forEach>	
    		</div>
  		</div>
  		<div style="display: table; width: 100%; height: 100vh;">
  			<div style="display: table-cell; vertical-align: middle; text-align: center;">
    			<form action="http://localhost:8080/homeworkday10/game">
      				<button type="submit" style="width: 200px;
                              height: 80px;
                              font-size: 40px;
                              padding: 8px;
                              margin: 8px;
                              box-sizing: border-box;"> Chơi lại
      				</button>
    			</form>
  			</div>
		</div>
	</div>
</body>
</html>