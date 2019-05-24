package com.teaphy.aspectj;

public aspect WithinAspect {

	pointcut debugPointCut() : execution(* com.teaphy.domain.*.debug(..)) && !within(com..*.HtmlDeveloper);

	before(): debugPointCut() {
		System.out.println("debugPointCut_Entering : " + thisJoinPoint.getSourceLocation());
	}
}
