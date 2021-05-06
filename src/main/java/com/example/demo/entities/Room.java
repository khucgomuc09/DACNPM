package com.example.demo.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity(name = "room")
public class Room implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String image;
	private String address;
	private int area;
	private int price;
	private String contact;
	private String detailed_description;
	private int number_bedroom;
	private int number_bathroom;
	private int status;
	private int active;
	private int id_render;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getArea() {
		return area;
	}

	public void setArea(int area) {
		this.area = area;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getDetailed_description() {
		return detailed_description;
	}

	public void setDetailed_description(String detailed_description) {
		this.detailed_description = detailed_description;
	}

	public int getNumber_bedroom() {
		return number_bedroom;
	}

	public void setNumber_bedroom(int number_bedroom) {
		this.number_bedroom = number_bedroom;
	}

	public int getNumber_bathroom() {
		return number_bathroom;
	}

	public void setNumber_bathroom(int number_bathroom) {
		this.number_bathroom = number_bathroom;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getActive() {
		return active;
	}

	public void setActive(int active) {
		this.active = active;
	}

	public int getId_render() {
		return id_render;
	}

	public void setId_render(int id_render) {
		this.id_render = id_render;
	}

	@Override
	public String toString() {
		return "id: " + id + ", title: " + title + ", address: " + address + ", area: " + area + ", price: " + price
				+ ", contact: " + contact + ", detailed_description: " + detailed_description + ", status: " + status
				+ ", active: " + active;
	}
}
