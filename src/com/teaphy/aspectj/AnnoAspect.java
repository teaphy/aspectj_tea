package com.teaphy.aspectj;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class AnnoAspect {

	@Pointcut("execution(@com.teaphy.annotations.Author * com.teaphy.domain.JavaDeveloper.*(..))")
	void annoMethod(){}

	@Before(value = "annoMethod()")
	public void beforeAnnotMethod() {

		System.out.println("AnnoAspect - beforeAnnotMethod");
	}

}
