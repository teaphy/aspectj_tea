package com.teaphy.aspectj;

import com.teaphy.annotations.Author;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Arrays;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.reflect.MethodSignature;

public aspect AnnotationAspect {

	pointcut annoPointCut(): execution(@com.teaphy.annotations.Author * com.teaphy.domain.JavaDeveloper.*(..));

	/**
	 * 前置通知
	 */
	before(): annoPointCut() {
		System.out.println("前置通知");
		// 获取连接点的方法签名对象
		Signature signature = thisJoinPoint.getSignature();
		MethodSignature methodSignature = (MethodSignature) signature;
		Method method = methodSignature.getMethod();
		Author annoAuthor = method.getAnnotation(Author.class);

		if (null != annoAuthor) {
			System.out.println("Author.value(): " + annoAuthor.value());
		}
		System.out.println("signature: " + signature);
	}

//	/**
//	 * 后置通知
//	 */
//	after(): annoPointCut() {
//		System.out.println("后置通知");
//	}

//	void around(): annoPointCut(){
//		// 获取连接点的方法签名对象
//		Signature signature = thisJoinPoint.getSignature();
//		MethodSignature methodSignature = (MethodSignature) signature;
//		Method method = methodSignature.getMethod();
//		Author annoAuthor = method.getAnnotation(Author.class);
//
//		if (null != annoAuthor) {
//			System.out.println("Author.value(): " + annoAuthor.value());
//		}
//		System.out.println("signature: " + signature);
//
//		proceed();
//	}
}
