package com.somnus.smart.batch.support.sms;

import java.util.List;

public class BatchMessageBody {
    private String            appCode;
    private String            callback;
    private String            templateId;
    private List<SendMessage> sendMsgList;

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

    public List<SendMessage> getSendMsgList() {
        return sendMsgList;
    }

    public void setSendMsgList(List<SendMessage> sendMsgList) {
        this.sendMsgList = sendMsgList;
    }

}
