package com.spring.SpringCRM.aspect;

import com.spring.SpringCRM.entities.Customer;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.logging.Logger;

@Aspect
@Component
public class CRMLoggingAspect {
    private Logger logger = Logger.getLogger(getClass().getName());

//    @Pointcut("execution(* com.spring.practiceMVC.controller.CustomerController.*Customer(..))")
//    public void forControllerPackage() {}
//
//    @Pointcut("execution(* com.spring.practiceMVC.service.CustomServiceImpl.*Customer(..))")
//    public void forServicePackage() {}

    @Pointcut("execution(* com.spring.SpringCRM.dao.CustomerDAOImpl.*Customer(..))")
    public void forDAOPackage() {}

//    @Pointcut("forControllerPackage() || " +
//            "forServicePackage() ||" +
//            "forDAOPackage()")
//    public void forAppFlow() {}

    @Before("forDAOPackage()")
    public void beforeAdvice(JoinPoint joinPoint){
        String callingMethod = joinPoint.getSignature().toShortString();
        Object[] args = joinPoint.getArgs();

        logger.info("=========> @Before: for method: " + callingMethod);
        for (Object arg : args) {
            logger.info("=========> method's args: " + arg);
        }
    }

    @AfterReturning(pointcut = "forDAOPackage()", returning = "result")
    public void afterReturningAdvice(JoinPoint joinPoint, Object result) {
        String callingMethod = joinPoint.getSignature().toShortString();

        logger.info("=========> @AfterThrowing: for method: " + callingMethod);
        logger.info("=========> result: " + result);
    }

}
