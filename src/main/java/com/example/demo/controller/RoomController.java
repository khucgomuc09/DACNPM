package com.example.demo.controller;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.service.RoomService;

@Controller
@Transactional
public class RoomController {
	@Autowired
	private RoomService roomservice;

//	@PostMapping("/insert")
//
//	public String insert(ModelMap model, @ModelAttribute("room") Room room) {
//		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
//		Transaction transaction = session.beginTransaction();
//		try {
//			session.save(room);
//		} catch (Exception e) {
//			// TODO: handle exception
//			transaction.rollback();
//		}
//		return "insert";
//	}
//
	@GetMapping("/")
	public String getRoom(ModelMap model) {
		model.addAttribute("listRoom", roomservice.getAllRoom());
		return "room";
	}


	@GetMapping("/roomdetail/{id}")
	public String getRoomByID(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute(roomservice.getRoomById(id));
		return "roomdetail";
	}

}
