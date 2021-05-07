package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.entities.Room;
import com.example.demo.entities.User;
import com.example.demo.service.RoomService;

@Controller
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

//	@GetMapping("/")
//	public String getRoom(ModelMap model) {
//		model.addAttribute("listRoom", roomservice.getAllRoom());
//		return "room";
//	}

	@GetMapping("/roomdetail/{id}")
	public String getRoomByID(@PathVariable("id") int id, ModelMap modelMap) {
		modelMap.addAttribute(roomservice.getRoomById(id));
		return "RoomDetails";
	}

	@GetMapping("/")
	public String getRoom(@RequestParam(required = false, defaultValue = "") String keywords, ModelMap modelMap) {
		if (roomservice.getRoomByKeyWords(keywords).size() > 0) {

			modelMap.addAttribute("listRoom", roomservice.getRoomByKeyWords(keywords));

			System.out.println(roomservice.getRoomByKeyWords(keywords).get(0).getTitle());
		} else {
			modelMap.addAttribute("listRoom", roomservice.getAllRoom());
		}
		return "index";
	}

	@GetMapping("/room/{keyword}")
	@ResponseBody
	public List<Room> getRoom(@PathVariable("keyword") String keyword) {
		return roomservice.getRoomByKeyWords(keyword);
	}

	@GetMapping("roompost")
	public String roompost() {
		return "roompost";
	}

	@PostMapping("roompost")
	public String roompost(@ModelAttribute Room room) {
		System.out.println(room);
		roomservice.createPost(room);
		return "redirect:/";
	}

	@GetMapping("login")
	public String login() {
		return "login";
	}

	@PostMapping("login")
	public String login(@ModelAttribute User user) {
		if (roomservice.login(user)) {
			return "redirect:/";

		} else {

			return "redirect:login";
		}

	}

	@GetMapping("register")
	public String register() {
		return "register";
	}

	@PostMapping("register")
	public String register(@ModelAttribute User user) {
		roomservice.register(user);
		return "register";
	}

}
