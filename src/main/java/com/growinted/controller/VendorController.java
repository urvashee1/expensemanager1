package com.growinted.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.growinted.bean.VendorBean;
import com.growinted.dao.VendorDao;

@Controller
public class VendorController {
	@Autowired
	VendorDao vendorDao;

@GetMapping("/newvendor")
	public String newvendor() { // method
		return "Vendor";// jsp--open
	}

@PostMapping("/savevendor")
	public String saveVendor(VendorBean vendorbean) {
    System.out.println(vendorbean.getVendorName());
	vendorDao.addVendor(vendorbean);
	return "Vendor";
}
@GetMapping("/listvendor")
	public String listStatus(Model model) {
		List<VendorBean>listVendor=vendorDao.getAllVendor();
		model.addAttribute("listVendor",listVendor);
		return "ListVendor";
}
@GetMapping("/deletevendor/{vendorId}")
	public String deletevendor(@PathVariable("vendorId") Integer vendorId) {
		vendorDao.deleteVendor(vendorId);
		return "redirect:/listvendor";
    }
@GetMapping("/editvendor")
public String editVendor(@RequestParam("vendorId") Integer vendorId,Model model) {
	VendorBean vendorBean = vendorDao.getVendorById(vendorId);
	model.addAttribute("vendorBean",vendorBean);
	return "EditVendor";
}
@PostMapping("/updatevendor")
public String updateVendor(VendorBean vendorBean) {
	vendorDao.updateVendor(vendorBean);
	return "redirect:/listvendor";
}
}

