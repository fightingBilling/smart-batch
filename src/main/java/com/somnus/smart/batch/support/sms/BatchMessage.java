package com.somnus.smart.batch.support.sms;

public class BatchMessage {
    private BatchMessageBody body;
    public BatchMessageBody getBody() {
        return body;
    }
    public void setBody(BatchMessageBody body) {
        this.body = body;
    }
    public MessageHead getHead() {
        return head;
    }
    public void setHead(MessageHead head) {
        this.head = head;
    }
    private MessageHead head;

}
