<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>결제 성공</h2>
    <p id="paymentKey"></p>
    <p id="orderId"></p>
    <p id="amount"></p>
    
    <script>
      // 쿼리 파라미터 값이 결제 요청할 때 보낸 데이터와 동일한지 반드시 확인하세요.
      // 클라이언트에서 결제 금액을 조작하는 행위를 방지할 수 있습니다.
      const urlParams = new URLSearchParams(window.location.search); // 현재 페이지 url의 쿼리 스트링 부분을 가져옴
      const paymentKey = urlParams.get("paymentKey");
      const orderId = urlParams.get("orderId");
      const amount = urlParams.get("amount");
      
      if(orderId != '${orderId}' || amount != '${amount}') {
    	  alert('결제 정보에 문제가 있습니다. 다시 시도해주세요.');
    	  window.location.href = '/donation/widget';
      }
      
      async function confirm() {
        const requestData = {
          paymentKey: paymentKey,
          orderId: orderId,
          amount: amount,
        };

        const response = await fetch("/donation/confirm", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(requestData),
        });

        const json = await response.json();
		
        console.log(response.ok);
        if (!response.ok) {
          // 결제 실패 비즈니스 로직을 구현하세요.
          console.log(json);
          console.log('${petId}');
          window.location.href = `/donation/fail?message=${json.message}&code=${json.code}`;
        }

        // 결제 성공 비즈니스 로직을 구현하세요.
        console.log(json);
        console.log('${petId}');
        alert("결제 성공");
      }
      confirm();

      const paymentKeyElement = document.getElementById("paymentKey");
      const orderIdElement = document.getElementById("orderId");
      const amountElement = document.getElementById("amount");

      orderIdElement.textContent = "주문번호: " + orderId;
      amountElement.textContent = "결제 금액: " + amount;
      paymentKeyElement.textContent = "paymentKey: " + paymentKey;
    </script>
</body>
</html>