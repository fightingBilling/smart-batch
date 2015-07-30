package com.somnus.smart.batch.utils;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Component;

/**
 * @Description: 发送邮件
 * @author Somnus
 * @date 2015年7月30日 下午2:07:21 
 * @version V1.0
 */
@Component
public class MailUtil {
    protected transient Logger  log = LoggerFactory.getLogger(getClass());
    @Autowired
    private MailSender          mailSender;

    /** 日切成功邮件主题 */
    private final static String DAY_CUT_SUCCESS_SUBJECT = "账务日切运行成功";

    /** 日切失败邮件主题 */
    private final static String DAY_CUT_ERROR_SUBJECT   = "账务日切运行失败";

    /** 日终成功邮件主题 */
    private final static String DAY_END_SUCCESS_SUBJECT = "账务日终运行成功";

    /** 日终失败邮件主题 */
    private final static String DAY_END_ERROR_SUBJECT   = "账务日终运行失败";

    /** 日切失败邮件主题 */
    private final static String DAY_CUT_ERROR_TEXT      = "账务日切运行失败，请紧急联系相关运维人员解决。";

    /** 日终失败邮件主题 */
    private final static String DAY_END_ERROR_TEXT      = "账务日终运行失败，请紧急联系相关运维人员解决。";

    /**
     * 日终成功发送邮件
     */
    public void sendDayEndSuccessMail(String from, String[] to,String cc, String accDate) {
        sendMail(DAY_END_SUCCESS_SUBJECT, "", from, to, cc, accDate);
    }

    /**
     * 日终成功发送邮件
     */
    public void sendDayEndFailMail(String from, String[] to, String cc, String accDate) {
        sendMail(DAY_END_ERROR_SUBJECT, DAY_END_ERROR_TEXT, from, to, cc, accDate);
    }

    /**
     * 日切成功发送邮件
     */
    public void sendDayCutSuccessMail(String from, String[] to, String cc, String accDate) {
        sendMail(DAY_CUT_SUCCESS_SUBJECT, "", from, to, cc, accDate);
    }

    /**
     * 日切失败发送邮件
     */
    public void sendDayCutFailMail(String from, String[] to, String cc, String accDate) {
        sendMail(DAY_CUT_ERROR_SUBJECT, DAY_CUT_ERROR_TEXT, from, to, cc, accDate);
    }

    private void sendMail(String subject, String text, String from, String[] to, String cc,
                          String accDate) {
        log.info("from:" + from + " to:" + to);
        SimpleMailMessage message = new SimpleMailMessage();
        message.setFrom(from);
        message.setSentDate(new Date());
        message.setSubject(subject + "(账务日期：" + accDate + ")");
        message.setText(text);
        message.setCc(cc);
        message.setTo(to);
        mailSender.send(message);
    }

}
