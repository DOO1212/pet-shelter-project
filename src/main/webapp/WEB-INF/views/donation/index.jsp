<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8" />
    <!-- SDK 추가 -->
    <script src="https://js.tosspayments.com/v2/standard"></script>
    
    <style type="text/css">
    	body {
    		width: 50%;
    		margin: 0 auto;
    		text-align: center;
    	}
    </style>
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
        const coupon = document.getElementById("coupon-box");
        // ------  SDK 초기화 ------
        // @docs https://docs.tosspayments.com/sdk/v2/js#토스페이먼츠-초기화
        const clientKey = "test_gck_docs_Ovk5rk1EwkEbP0W43n07xlzm";
        const tossPayments = TossPayments(clientKey);
        // 회원 결제
        // @docs https://docs.tosspayments.com/sdk/v2/js#tosspaymentswidgets
        const customerKey = "D-CMv_qLTZy5VOijH0eAL"; // 다른 사용자가 이 값을 탈취하면 악의적인 사용을 할 수 있습니다.
        const widgets = tossPayments.widgets({
          customerKey,
          brandpay:{
            // 개발자센터의 브랜드페이 > 리다이렉트 URL에 아래 URL을 추가하세요.
            redirectUrl: window.location.origin + "/auth"
          }
        });
        // 비회원 결제
        // const widgets = tossPayments.widgets({customerKey: TossPayments.ANONYMOUS});

        // ------ 주문의 결제 금액 설정 ------
        // @docs https://docs.tosspayments.com/sdk/v2/js#widgetssetamount
        await widgets.setAmount({
          currency: "KRW",
          value: 50000,
        });

        await Promise.all([
          // ------  결제 UI 렌더링 ------
          // @docs https://docs.tosspayments.com/sdk/v2/js#widgetsrenderpaymentmethods
          widgets.renderPaymentMethods({
            selector: "#payment-method",
            variantKey: "DEFAULT",
          }),
          // ------  이용약관 UI 렌더링 ------
          // @docs https://docs.tosspayments.com/sdk/v2/js#widgetsrenderagreement
          widgets.renderAgreement({ selector: "#agreement", variantKey: "AGREEMENT" }),
        ])

        // ------ '결제하기' 버튼 누르면 결제창 띄우기 ------
        // https://docs.tosspayments.com/sdk/v2/js#widgetsrequestpayment
        button.addEventListener("click", async function () {
          // 결제를 요청하기 전에 orderId, amount를 서버에 저장하세요.
          // 결제 과정에서 악의적으로 결제 금액이 바뀌는 것을 확인하는 용도입니다.
          await widgets.requestPayment({
            orderId: "s1AzlFzPchUFkrZJmQOUL", // 고유 주문번호
            orderName: "토스 티셔츠 외 2건",
            successUrl: window.location.origin + "/success", // 결제 요청이 성공하면 리다이렉트되는 URL
            failUrl: window.location.origin + "/fail", // 결제 요청이 실패하면 리다이렉트되는 URL
            customerEmail: "customer123@gmail.com",
            customerName: "김토스",
            customerMobilePhone: "01012341234",
          });
        });
      }
    </script>
  </body>
</html>
</body>
</html>