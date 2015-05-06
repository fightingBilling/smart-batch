package com.somnus.smart.batch.support.mybatis;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @Description 以注解方式来标识PBCS MyBatis的DAO
 * @author caobin
 * @date 2013-10-14
 * @version 1.0
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
public @interface PbcsMyBatisRepository {

}
