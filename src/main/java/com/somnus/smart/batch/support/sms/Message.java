package com.somnus.smart.batch.support.sms;

public class Message {
    private MessageBody body;
    private MessageHead head;

    public MessageBody getBody() {
        return body;
    }

    public void setBody(MessageBody body) {
        this.body = body;
    }

    public MessageHead getHead() {
        return head;
    }

    public void setHead(MessageHead head) {
        this.head = head;
    }

}
