package com.somnus.smart.batch.support.sms;

import java.util.List;

public class SendMessage {
    private List<MessageParam> paramList;
    private String             phoneNo;
    private String             appMsgId;

    public List<MessageParam> getParamList() {
        return paramList;
    }

    public void setParamList(List<MessageParam> paramList) {
        this.paramList = paramList;
    }

    public String getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    public String getAppMsgId() {
        return appMsgId;
    }

    public void setAppMsgId(String appMsgId) {
        this.appMsgId = appMsgId;
    }

}
