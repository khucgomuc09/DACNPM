package com.example.demo.service;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Room;
import com.example.demo.entities.User;
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

	public List<Room> getRoomByKeyWords(String keywords) {
		Session session = factory.getCurrentSession();
		session.getTransaction().begin();
		String hql = "from room where lower(title) like :mykey or lower(address) like :mykey or lower(area) like :mykey or lower(price) like :mykey";
		@SuppressWarnings({ "unchecked" })
		Query<Room> query = session.createQuery(hql);
		query.setParameter("mykey", "%" + keywords + "%");
		List<Room> rooms = query.getResultList();
		System.out.println(query.getQueryString());
		session.getTransaction().commit();

		return rooms;
	}

	public Room createPost(Room r) {
		Session session = factory.getCurrentSession();
		session.getTransaction().begin();
		session.save(r);
		session.getTransaction().commit();
		return r;
	}

	public User register(User u) {
		Session session = factory.getCurrentSession();
		session.getTransaction().begin();

		session.save(u);
		session.getTransaction().commit();
		return u;
	}

	public boolean login(User u) {
		Session session = factory.getCurrentSession();
		session.getTransaction().begin();
		String hql = "from user where name= :username";

		@SuppressWarnings("unchecked")
		Query<User> query = session.createQuery(hql);
		query.setParameter("username", u.getName());
		List<User> users = query.getResultList();
		session.getTransaction().commit();
		if (users.get(0).getName().equals(u.getName()) && users.get(0).getPassword().equals(u.getPassword())) {
			return true;
		}
		return false;
	}

}
