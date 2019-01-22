package com.user;

import com.enums.Weekday;

public class Course {
	// fields
	private String courseName;
	private String professor;
	private String time;
	private String roomNumber;
	private String startDate;
	private Weekday[] occurrences;
	
	// properties
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getProfessor() {
		return professor;
	}
	public void setProfessor(String professor) {
		this.professor = professor;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public Weekday[] getOccurrences() {
		return occurrences;
	}
	public void setOccurrences(Weekday[] occurrences) {
		this.occurrences = occurrences;
	}
}
