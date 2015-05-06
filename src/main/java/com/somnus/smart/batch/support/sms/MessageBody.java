package com.somnus.smart.batch.support.sms;

import java.util.List;

public class MessageBody {
    private String             appCode;
    private String             callback;
    private String             templateId;
    private String             appMsgId;
    private List<MessageParam> paramList;
    private String             phoneNo;

    public String getAppCode() {
        return appCode;
    }

    public void setAppCode(String appCode) {
        this.appCode = appCode;
    }

    public String getCallback() {
        return callback;
    }

    public void setCallback(String callback) {
        this.callback = callback;
    }

    public String getTemplateId() {
        return templateId;
    }

    public void setTemplateId(String templateId) {
        this.templateId = templateId;
    }

    public String getAppMsgId() {
        return appMsgId;
    }

    public void setAppMsgId(String appMsgId) {
        this.appMsgId = appMsgId;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public List<MessageParam> getParamList() {
        return paramList;
    }

    public void setParamList(List<MessageParam> paramList) {
        this.paramList = paramList;
    }

}
