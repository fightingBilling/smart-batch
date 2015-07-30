package com.somnus.smart.schedule;

import org.apache.commons.cli.BasicParser;
import org.apache.commons.cli.CommandLine;
import org.apache.commons.cli.CommandLineParser;
import org.apache.commons.cli.Options;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @Description: TODO
 * @author Somnus
 * @date 2015年7月30日 下午1:48:42 
 * @version V1.0
 */
public class SimpleScheduleLaunchMain {

	/**
	 * @Description
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			
			CommandLineParser cliParser = new BasicParser();
			
			Options options = new Options();
			options.addOption("h", "help", false, "Help info.");
			options.addOption("p", "profile", true, "Spring profile.");
			
			CommandLine cli = cliParser.parse(options, args);
			
			String profileValue = null;
			
			
			if(cli.hasOption("h")){
				StringBuilder cliInfo = new StringBuilder();
				cliInfo.append("Usage:\n");
				cliInfo.append("\t-h --help\t\t\t帮助信息\n");
				cliInfo.append("\t-p --profile <value>\t\tspring激活配置名称\n");
				System.out.println(cliInfo.toString());
				System.exit(0);
			}
			
			if(cli.hasOption("p")){
				profileValue = cli.getOptionValue("p");
			}
			
			
			startContainer(profileValue);
			
		} catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}
	
	/**
	 * @Description 启动容器
	 * @param profile
	 * @return
	 * @throws InterruptedException 
	 */
	private static void startContainer(String profile) throws InterruptedException{
		if(StringUtils.isBlank(profile)){
			System.out.println("\nCannot find actived spring profile, using dev.");
			profile = "dev";
		}else{
			System.out.println(String.format("Using actived spring profile: %s", profile));
		}
		System.setProperty("spring.profiles.active", profile);
		new ClassPathXmlApplicationContext(
				"classpath:/spring-env.xml",
				"classpath*:/spring-batch-*.xml",
				"classpath*:/jobs/*-job.xml",
				"classpath:/schedule/spring-quartz-cron-local.xml"
		);
	}
}
