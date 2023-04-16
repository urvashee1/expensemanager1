package com.growinted.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.growinted.bean.StatusBean;
import com.growinted.dao.StatusDao;
@Controller
public class StatusController {
	@Autowired
	StatusDao statusDao;

@GetMapping("/newstatus")
	public String newStatus() { // method
		return "Status";// jsp--open
	}

@PostMapping("/savestatus")
	public String saveStatus(StatusBean statusbean) {
    System.out.println(statusbean.getStatus());
	statusDao.addStatus(statusbean);
	return "Status";
}
@GetMapping("/liststatus")
	public String listStatus(Model model) {
		List<StatusBean>listStatus=statusDao.getAllStatus();
		model.addAttribute("listStatus",listStatus);
		return "ListStatus";
		
	}
@GetMapping("/deletestatus/{statusId}")
	public String deletestatus(@PathVariable("statusId") Integer statusId) {
		statusDao.deleteStatus(statusId);
		return "redirect:/liststatus";
	}
@GetMapping("/editstatus")
public String editStatus(@RequestParam("statusId") Integer statusId,Model model) {
	StatusBean statusBean = statusDao.getStatusById(statusId);
	model.addAttribute("statusBean",statusBean);
	return "EditStatus";
}
@PostMapping("/updatestatus")
public String updateStatus(StatusBean statusBean) {
	statusDao.updateStatus(statusBean);
	return "redirect:/liststatus";
}
}