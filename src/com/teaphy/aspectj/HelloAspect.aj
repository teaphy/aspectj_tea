package com.teaphy.aspectj;

public aspect HelloAspect {

	/**
	 * 定义切入点
	 */
	pointcut helloPointCut(): execution(* com.teaphy.test.HelloAspectjTest.main(..));

	/**
	 * 定义前置通知
	 */
	before() : helloPointCut() {
		System.out.println("hello aspectj， 这是一个前置通知");
	}
}