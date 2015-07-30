package com.somnus.smart.batch.support.mybatis;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @Description: 以注解方式来标识MyBatis的DAO
 * @author Somnus
 * @date 2015年7月30日 下午2:05:55 
 * @version V1.0
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface MyBatisRepository {

}
