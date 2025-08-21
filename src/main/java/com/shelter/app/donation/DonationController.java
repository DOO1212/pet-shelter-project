package com.shelter.app.donation;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/donation/*")
public class DonationController {

	@GetMapping("index")
	public String index() {
		return "donation/index";
	}

	@GetMapping("success")
	public String success() {
		return "redirect:/";
	}

}
