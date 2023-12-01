package com.acorn.day2;

public class Movie {

	String title;
	String genre;
	String age;
	
	public Movie() {
		// TODO Auto-generated constructor stub
	}

	public Movie(String title, String genre, String age) {
		super();
		this.title = title;
		this.genre = genre;
		this.age = age;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	@Override
	public String toString() {
		return "Movie [title=" + title + ", genre=" + genre + ", age=" + age + "]";
	}
	
	
}
