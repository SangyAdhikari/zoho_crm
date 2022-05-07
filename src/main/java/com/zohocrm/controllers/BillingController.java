package com.zohocrm.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.zohocrm.entities.Billing;
import com.zohocrm.services.BillingService;

@Controller
public class BillingController {
	@Autowired
	private BillingService billingService;
	@RequestMapping("/generate")
 public String generateBill(@ModelAttribute("bill") Billing bill){
		billingService.generateOneBill(bill);
	return "bill_info";
}
	@RequestMapping("/listallbills")
	 public String listAllbills(ModelMap model) {
		List<Billing> bills= billingService.findAllbills();
			model.addAttribute("bills",bills);
		 return "billing_result";
}
	@RequestMapping("/getBillingById")
	public String getBillingById(@RequestParam("id") long id,ModelMap model) {
		Billing bill = billingService.getBilling(id);
		model.addAttribute("bill",bill);

		return "bill_info";
}
}