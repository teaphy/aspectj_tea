package com.teaphy.aspectj;

public aspect Call_ExecutionAspect {

	pointcut callCode() : call(* com.teaphy.domain.JavaDeveloper.code(..));

	pointcut executionCode(): execution(* com.teaphy.domain.JavaDeveloper.code(..));

	before(): callCode(){

		System.out.println("call_sourceLocation: " + thisJoinPoint.getSourceLocation());
	}

	before(): executionCode(){

		System.out.println("execution_sourceLocation: " + thisJoinPoint.getSourceLocation());
	}

}
