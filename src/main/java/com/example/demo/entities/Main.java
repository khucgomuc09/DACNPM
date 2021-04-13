package com.example.demo.entities;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.example.demo.utils.HibernateUtils;

public class Main {
	static final SessionFactory factory = HibernateUtils.getSessionFactory();

	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		Session session = factory.getCurrentSession();
		session.getTransaction().begin();

		// create new room
//		Room room = new Room();
//		room.setTitle("test");
//		room.setImage("hi");
//		room.setAddress("bmt");
//		room.setArea(0);
//		room.setPrice(1000);
//		room.setContact("imroot");
//		room.setDetailed_description("what'sthis");
//		room.setStatus(0);
//		room.setActive(0);
//		session.save(room);
		@SuppressWarnings("unchecked")
		Query<Room> query = session.createQuery("from room where id= :id");
		query.setInteger("id", 1);
		List<Room> listroom = query.list();

		session.getTransaction().commit();
		System.out.println("=================================");

//		System.out.println(listroom.get(0));
		for (Room room : listroom) {
			System.out.println(room);
		}
	}

}
