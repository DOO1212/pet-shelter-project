<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 성공</title>
</head>
<body>
    
    <p>${name}님! 후원이 성공적으로 완료되었습니다!</p>
    <p>주문번호: ${order.orderId}</p>
    <p>후원금액: ${order.donationPrice} 원</p>
    
</body>
</html>