package com.teaphy.test;

import com.teaphy.domain.HtmlDeveloper;
import com.teaphy.domain.JavaDeveloper;
import com.teaphy.domain.VueDeveloper;

public class WithinAspectTest {

	public static void main(String[] args) {
		JavaDeveloper javaDeveloper = new JavaDeveloper();
		HtmlDeveloper htmlDeveloper = new HtmlDeveloper();
		VueDeveloper vueDeveloper = new VueDeveloper();
		javaDeveloper.debug();
		htmlDeveloper.debug();
		vueDeveloper.debug();
	}
}
