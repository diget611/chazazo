package kh.spring.chazazo.vehicle.model.dto;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class LocationInfoDto {
	
	private int idx;
	private String model;
	private int year;
	private int price;
	private String image;
	private String maker;
	private int locationIdx;
	private int fueltypeIdx;
	private int cartypeIdx;
	private String name;
	private double latitude;
	private double longitude;
	private String phoneNumber;
	private String nusinessHours;
	private String address;
	
}
