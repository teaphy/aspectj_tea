package com.teaphy.aspectj;

public aspect WithArgsAspect {

	pointcut codePointCut(String part) : execution(* com.teaphy.domain.JavaDeveloper.code(String)) && args(part);

	before(String part): codePointCut(part) {
		System.out.println("编写" + part + "之前，先查看文档");
	}
}
