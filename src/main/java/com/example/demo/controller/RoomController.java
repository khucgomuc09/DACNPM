package com.example.demo.controller;

import java.util.List;

import javax.persistence.EntityManagerFactory;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.entities.Room;
import com.example.demo.utils.HibernateUtils;

@Controller
@Transactional
//@RequestMapping("/")
public class RoomController {

//	private Session getCurrentSession() {
//		return factory.unwrap(SessionFactory.class).getCurrentSession();
//	}

	@PostMapping("/")

	public String insert(ModelMap model, @ModelAttribute("room") Room room) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		Transaction transaction = session.beginTransaction();
		try {
			session.save(room);
		} catch (Exception e) {
			// TODO: handle exception
			transaction.rollback();
		}
		return "insert";
	}

	@GetMapping("/")
	public String getRoom(ModelMap model) {
		Session session = HibernateUtils.getSessionFactory().getCurrentSession();
		session.beginTransaction();

		String hql = "from room";

		@SuppressWarnings("unchecked")
		Query<Room> query = session.createQuery(hql);

		List<Room> list = query.list();
		model.addAttribute(list);
		for (Room room : list) {
			System.out.println(room);
		}
		model.addAttribute("listRoom",list);
		return "room";
	}
}
