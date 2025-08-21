package com.shelter.app.donation;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shelter.app.member.MemberVO;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/donation/*")
public class DonationController {

	@Autowired
	private DonationService donationService;

	@GetMapping("pay")
	public String index(Long petId, Model model, HttpSession session) throws Exception {
		MemberVO memberVO = (MemberVO) session.getAttribute("member");

		if (memberVO == null) {
			return "redirect:/member/login";
		}

		String orderId = UUID.randomUUID().toString();
		Long amount = 10000L;
		String orderName = "동물 후원";

		DonationVO donationVO = new DonationVO();

		donationVO.setOrderId(orderId);
		donationVO.setMemberVO(memberVO);
		donationVO.setDonationPrice(amount);
		donationVO.setMemberId(memberVO.getMemberId());
		donationVO.setPetId(petId);
		donationVO.setStatus("PENDING");

		donationService.createDonation(donationVO);

		model.addAttribute("orderId", orderId);
		model.addAttribute("orderName", orderName);
		model.addAttribute("amount", amount);
		model.addAttribute("customerName", memberVO.getName());
		model.addAttribute("customerEmail", memberVO.getEmail());

		return "donation/index";
	}

	@GetMapping("success")
	public String success(String paymentKey, String orderId, Long amount, Model model) throws Exception {
		
		DonationVO donationVO = donationService.findDonation(orderId);
		
		if (donationVO != null) {
		    
		    if (amount.equals(donationVO.getDonationPrice())) {
		        
		        donationService.completeDonation(donationVO);
		        model.addAttribute("order", donationVO);
		        model.addAttribute("name", donationVO.getMemberVO().getUsername());
		        
		        return "donation/success";
		        
		    } else {
		        return "donation/fail";
		    }
		    
		} else {
		    return "donation/fail";
		}
	}
}
