package com.somnus.smart.batch.support.sms;

public class MessageHead {
    private String dateTime;
    private String receiver;
    private String sender;
    private String operator;
    private String srcCode;
    private String version;

    public String getDateTime() {
        return dateTime;
    }

    public void setDateTime(String dateTime) {
        this.dateTime = dateTime;
    }

    public String getReceiver() {
        return receiver;
    }

    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getSrcCode() {
        return srcCode;
    }

    public void setSrcCode(String srcCode) {
        this.srcCode = srcCode;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

}
