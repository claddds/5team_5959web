package com.oguogu.pocket.model.vo;

public class Pocketplace_Filter_VO {
	// String: 도로명 주소(roadaddr), 기본 정보_장소설명(locationex), 시설명(facilities)
	// double: 경도(lon), 위도(lat)
	private String roadaddr,locationex, facilities;
	private double lon, lat;
	
	public Pocketplace_Filter_VO() {}
	
	public Pocketplace_Filter_VO(String roadaddr, String locationex, String facilities, double lon, double lat) {
		
		this.roadaddr = roadaddr;
		this.locationex = locationex;
		this.facilities = facilities;
		this.lon = lon;
		this.lat = lat;
	}

	public String getRoadaddr() {
		return roadaddr;
	}
	public void setRoadaddr(String roadaddr) {
		this.roadaddr = roadaddr;
	}
	public String getLocationex() {
		return locationex;
	}
	public void setLocationex(String locationex) {
		this.locationex = locationex;
	}
	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	public double getLon() {
		return lon;
	}
	public void setLon(double lon) {
		this.lon = lon;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	
	
}
