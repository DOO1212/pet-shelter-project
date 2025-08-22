<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://js.tosspayments.com/v2/standard"></script>
</head>
<body>
    <!-- 결제 UI -->
    <div id="payment-method"></div>
    <!-- 이용약관 UI -->
    <div id="agreement"></div>
    <!-- 결제하기 버튼 -->
    <button class="button" id="payment-button" style="margin-top: 30px">결제하기</button>

	<script>
      main();

      async function main() {
        const button = document.getElementById("payment-button");
        // ------  결제위젯 초기화 ------
        const clientKey = "";
        const tossPayments = TossPayments(clientKey);
        // 회원 결제
        const customerKey = crypto.randomUUID();
        const widgets = tossPayments.widgets({
          customerKey,
        });
        // 비회원 결제
        // const widgets = tossPayments.widgets({ customerKey: TossPayments.ANONYMOUS });

        // ------ 주문의 결제 금액 설정 ------
        const amount = 500;
        
        await widgets.setAmount({
          currency: "KRW",
          value: amount,
        });

        await Promise.all([
          // ------  결제 UI 렌더링 ------
          widgets.renderPaymentMethods({
            selector: "#payment-method",
            variantKey: "DEFAULT",
          }),
          // ------  이용약관 UI 렌더링 ------
          widgets.renderAgreement({ selector: "#agreement", variantKey: "AGREEMENT" }),
        ]);

        // ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
        const orderId = crypto.randomUUID();
        
        button.addEventListener("click", async function () {
          await widgets.requestPayment({
            orderId: orderId,
            orderName: "토스 티셔츠 외 2건",
            successUrl: window.location.origin + "/donation/success",
            failUrl: window.location.origin + "/donation/fail",
            customerEmail: "customer123@gmail.com",
            customerName: "김토스",
            customerMobilePhone: "01012341234",
          });
        });
        
        let params = new URLSearchParams();
        params.append('orderId', orderId);
        params.append('amount', amount);
        
        fetch(`/donation/bind`, {
            method: 'POST',
            body: params
          })
          .then(r => r.text()) // 이 줄에서의 r은 지역변수 (이 줄에서 쓰고 사라짐)
          .then(r => { // 이때 여기서 r은 위에서 r.text()로 받은 데이터임 (위의 r과 다름)
            // console.log(r);
            // if(r === '1') {
            //   console.log('삭제 성공');
            // } else {
            //   console.log('삭제 실패');
            // }

            // 앞뒤 공백 무조건 제거하고 사용
            console.log(r.trim());
          });
      }
    </script>
</body>
</html>