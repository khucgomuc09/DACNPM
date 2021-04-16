package com.example.demo.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Room;
import com.example.demo.utils.HibernateUtils;

@Service
public class RoomService {
	@Autowired
	private Room room;

	private static SessionFactory factory = HibernateUtils.getSessionFactory();

	public Room getRoomById(int id) {
		Session session = factory.getCurrentSession();
		session.getTransaction().begin();
		room = session.get(Room.class, id);
		session.getTransaction().commit();
		return room;
	}

	public List<Room> getAllRoom() {
		Session session = factory.getCurrentSession();
		session.getTransaction().begin();
		@SuppressWarnings("unchecked")
		List<Room> rooms = session.createQuery("from room").list();
		session.getTransaction().commit();

		return rooms;
	}

}
