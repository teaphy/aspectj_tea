package com.teaphy.domain;

import com.teaphy.annotations.Author;
import javax.jws.Oneway;


public class JavaDeveloper {

	public void debug() {
		System.out.println("JavaDeveloper begin the debug");
	}


	public void code(String part) {
		System.out.println("JavaDeveloper is coding the part of " + part);
	}

	public String getType() {
		//  异常返回通知
//		int a = 1 / 0;
		return "Java";
	}

	public int sum(int a, int b) {
		return a + b;
	}

	@Author
	public void annoTest1() {
		System.out.println("annotation test1");
	}

	public void annoTest2() {
		System.out.println("annotation test2");
	}
}
