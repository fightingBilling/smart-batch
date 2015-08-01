package com.somnus.smart.batch.core.joblaunchdetails.support.aspect;

import java.lang.reflect.Field;

import org.apache.commons.lang.IllegalClassException;
import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.batch.core.StepExecution;
import org.springframework.batch.core.scope.context.ChunkContext;
import org.springframework.batch.core.step.tasklet.Tasklet;
import org.springframework.batch.item.ItemReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.util.ReflectionUtils;

import com.somnus.smart.batch.core.joblaunchdetails.support.aspect.dao.LogicFlowCtrlDao;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:49:09 
 * @version V1.0
 */
public abstract class AbstractBaseAspect{

	/**
	 * @Description 获取被代理的原始对象
	 * @param objProceedingJoinPoint
	 * @param clazz
	 * @return
	 */
	protected<C> C getProxiedObject(final ProceedingJoinPoint objProceedingJoinPoint, Class<C> clazz){
		return clazz.cast(objProceedingJoinPoint.getThis());
	}
	
	/**
	 * @Description 获取步骤执行上下文
	 * @param objProceedingJoinPoint
	 * @return
	 */
	public StepExecution getStepExecution(final ProceedingJoinPoint objProceedingJoinPoint){

		Object object = objProceedingJoinPoint.getTarget();
		if(object == null)throw new RuntimeException("currently executing object is null");
		//Tasklet -> execute
		if(Tasklet.class.isAssignableFrom(object.getClass())){
			Object[] args = objProceedingJoinPoint.getArgs();
			if(args == null || args.length != 2){
				throw new IllegalArgumentException("args of Tasklet.execute is incorrct");
			}
			ChunkContext chunkContext = (ChunkContext)args[1];
			return chunkContext.getStepContext().getStepExecution();
		}else if(ItemReader.class.isAssignableFrom(object.getClass())){
			Field field = ReflectionUtils.findField(object.getClass(), "stepExecution", StepExecution.class);
			if(field == null){
				throw new RuntimeException("Cannot find stepExecution filed");
			}	
			field.setAccessible(true);
			return (StepExecution)ReflectionUtils.getField(field, object);
		}else{
			throw new IllegalClassException("Either Tasklet or ItemReader is required");
		}
	}
	
	protected transient Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	protected LogicFlowCtrlDao logicFlowCtrlDao;
	
	@Value("${batch.forceexec.stepnames}")
	protected String forceExecStepnames;
	
}
