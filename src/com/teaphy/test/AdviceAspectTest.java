package com.teaphy.test;

import com.teaphy.domain.JavaDeveloper;

public class AdviceAspectTest {

	public static void main(String[] args) {
		JavaDeveloper javaDeveloper = new JavaDeveloper();
		String type = javaDeveloper.getType();
		System.out.println("developer type: " + type);

		javaDeveloper.sum(1, 2);
	}

}
