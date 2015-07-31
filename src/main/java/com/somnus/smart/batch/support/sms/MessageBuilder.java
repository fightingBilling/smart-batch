package com.somnus.smart.batch.support.sms;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.thoughtworks.xstream.XStream;

@Component
public class MessageBuilder {
    @Value("${batch.sms.sender}")
    private String sender;
    @Value("${batch.sms.receiver}")
    private String receiver;
    @Value("${batch.sms.srcCode}")
    private String srcCode;
    @Value("${batch.sms.operator}")
    private String operator;
    @Value("${batch.sms.version}")
    private String version;
    @Value("${batch.sms.appCode}")
    private String appCode;
    private String appMsgId;
    @Value("${batch.sms.callback}")
    private String callback;
    @Value("${batch.sms.phoneNo}")
    private String phoneNo;

    @Value("${batch.sms.paramName}")
    private String paramName;
    
    public String buildSignleMessage(String templateId,String accDate) {
        String messageXml = null;
        Message message = createSingleMessage(templateId,accDate);
        XStream xstream = new XStream();
        xstream.alias("message", Message.class);
        xstream.alias("head", MessageHead.class);
        xstream.alias("body", MessageBody.class);
        xstream.alias("param", MessageParam.class);
        messageXml = xstream.toXML(message);
        return messageXml;
    }
    
    public String buildBatchMessage(String templateId,String accDate) {
        String messageXml = null;
        BatchMessage message = createBatchMessage(templateId,accDate);
        XStream xstream = new XStream();
        xstream.alias("message", BatchMessage.class);
        xstream.alias("head", MessageHead.class);
        xstream.alias("body", BatchMessageBody.class);
        xstream.alias("sendMsg", SendMessage.class);
        xstream.alias("param", MessageParam.class);
        messageXml = xstream.toXML(message);
        return messageXml;
    }
    
    private Message createSingleMessage(String templateId,String accDate){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Message message=new Message();
        MessageBody body=new MessageBody();
        body.setAppCode(appCode);
        body.setAppMsgId(appMsgId);
        body.setCallback(callback);
        List<MessageParam> paramList = createParamList(accDate);
        body.setParamList(paramList);
        body.setPhoneNo(phoneNo);
        body.setTemplateId(templateId);
        message.setBody(body);
        MessageHead head = new MessageHead();
        head.setDateTime(simpleDateFormat.format(new Date()));
        head.setOperator(operator);
        head.setReceiver(receiver);
        head.setSender(sender);
        head.setSrcCode(srcCode);
        head.setVersion(version);
        message.setHead(head);
        return message;
    }
    
    private BatchMessage createBatchMessage(String templateId,String accDate){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String[] phoneNoArr = phoneNo.split(",");
        BatchMessage message = new BatchMessage();
        MessageHead head = new MessageHead();
        head.setDateTime(simpleDateFormat.format(new Date()));
        head.setOperator(operator);
        head.setReceiver(receiver);
        head.setSender(sender);
        head.setSrcCode(srcCode);
        head.setVersion(version);
        message.setHead(head);
        BatchMessageBody body = new BatchMessageBody();
        body.setAppCode(appCode);
        List<SendMessage> sendMsgList = new ArrayList<SendMessage>();
        for(int i=0;i<phoneNoArr.length;i++){
            SendMessage sendMessage = new SendMessage();
            sendMessage.setAppMsgId(null);
            List<MessageParam> paramList = createParamList(accDate);
            sendMessage.setParamList(paramList);
            sendMessage.setPhoneNo(phoneNoArr[i]);
            sendMsgList.add(sendMessage);
        }
        body.setSendMsgList(sendMsgList);
        body.setCallback(callback);
        body.setTemplateId(templateId);
        message.setBody(body);
        
        return message;
    }

    private List<MessageParam> createParamList(String accDate) {
        List<MessageParam> paramList = new ArrayList<MessageParam>();
        MessageParam param = new MessageParam();
        param.setParamName(paramName);
        param.setParamValue(accDate);
        paramList.add(param);
        return paramList;
    }
}
