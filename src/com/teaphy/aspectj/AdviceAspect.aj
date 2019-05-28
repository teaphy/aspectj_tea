package com.teaphy.aspectj;

public aspect AdviceAspect {

	pointcut advicePointCut(): execution(* com.teaphy.domain.JavaDeveloper.getType(..));
	pointcut plusPointCut(int a, int b): execution(* com.teaphy.domain.JavaDeveloper.sum(..)) && args(a, b);

	/**
	 * 前置通知
	 */
//	before(): advicePointCut() {
//		System.out.println("前置通知");
//	}

	/**
	 * 后置通知
	 */
	after(): advicePointCut() {
		System.out.println("后置通知");
	}


	//	/**
//	 * 正常返回通知
//	 */
//	after() returning(Object obj): advicePointCut() {
//		System.out.println("正常返回通知: " + obj.toString());
//	}

	/**
	 * 异常返回通知
	 */
//	after() throwing(Exception e): advicePointCut() {
//		System.out.println("异常返回通知：" + e.getMessage());
//	}

	/**
	 * 环绕通知
	 */
	String around(): advicePointCut(){
		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());

		String newValue = "aaa-" + proceed();

		System.out.println("Out: " + newValue);
		return newValue;
	}

	/**
	 * 带参数的环绕通知
	 */
	int around(int a, int b): plusPointCut(a, b){
		System.out.println("Entering : " + thisJoinPoint.getSourceLocation());

		int newValue = (a + b) * 10;

		System.out.println("Out: " + newValue);
		return newValue;
	}
}
