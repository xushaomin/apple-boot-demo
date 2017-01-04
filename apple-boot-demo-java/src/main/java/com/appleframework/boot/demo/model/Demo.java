package com.appleframework.boot.demo.model;

import java.io.Serializable;

public class Demo implements Serializable {

	private static final long serialVersionUID = -2534156403362275516L;

	private Integer id;
	private String name;
	private Integer age;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Demo() {
	}

	public Demo(Integer id, String name, Integer age) {
		this.id = id;
		this.name = name;
		this.age = age;
	}
	
	public static Demo create() {
		return new Demo();
	}

	public static Demo create(Integer id, String name, Integer age) {
		return new Demo(id, name, age);
	}
}
