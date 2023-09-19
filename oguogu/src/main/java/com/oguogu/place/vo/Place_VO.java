package com.oguogu.place.vo;

public class Place_VO {
	// String: 도로명 주소(roadaddr), 기본 정보_장소설명(locationex), 시설명(facilities), 카테고리3(category3)
	// double: 경도(lon), 위도(lat)
	private String roadaddr,locationex, facilities, category;
	private double lon, lat;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
