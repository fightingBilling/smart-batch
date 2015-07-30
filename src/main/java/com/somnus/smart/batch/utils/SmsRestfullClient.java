package com.somnus.smart.batch.utils;

import javax.ws.rs.core.MediaType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.somnus.smart.batch.support.sms.MessageBuilder;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.sun.jersey.api.client.config.ClientConfig;
import com.sun.jersey.api.client.config.DefaultClientConfig;

/**
 * @Description: 发送短信
 * @author Somnus
 * @date 2015年7月30日 下午2:08:58 
 * @version V1.0
 */
@Component
public class SmsRestfullClient {
    protected static Logger     log = LoggerFactory.getLogger(SmsRestfullClient.class);
    @Autowired
    private MessageBuilder      messageBuilder;
    @Value("${batch.sms.baseUrl}")
    private String              baseUrl;
    @Value("${batch.sms.dayCutTemplateId}")
    private String              dayCutTemplateId;
    @Value("${batch.sms.dayEndTemplateId}")
    private String              dayEndTemplateId;
    private static final String PATH_NAME       = "/short-message/send";
    private static final String BATCH_PATH_NAME = "/short-message/bulk-send";

    public void sendDayCutFailSms(String accDate) {
        sendBatchMessage(dayCutTemplateId, accDate);
    }

    public void sendDayEndFailSms(String accDate) {
        sendBatchMessage(dayEndTemplateId, accDate);
    }

    @SuppressWarnings("unused")
    private void sendMessage(String templateId, String accDate) {
        String testXml = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>";
        String message = messageBuilder.buildSignleMessage(templateId, accDate);
        log.info("sms内容：" + testXml + message);
        ClientConfig config = new DefaultClientConfig();
        Client client = Client.create(config);
        WebResource resource = client.resource(baseUrl);
        WebResource webResource = resource.path("rest").path(PATH_NAME);
        String clientResponse = getClientResponse(webResource);
        log.info("clientResponse:" + clientResponse);
        String response = getResponse(webResource, testXml + message);
        log.info("response:" + response);
    }

    private void sendBatchMessage(String templateId, String accDate) {
        String testXml = "<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"yes\"?>";
        String message = messageBuilder.buildBatchMessage(templateId, accDate);
        log.info("sms内容：" + testXml + message);
        ClientConfig config = new DefaultClientConfig();
        Client client = Client.create(config);
        WebResource resource = client.resource(baseUrl);
        WebResource webResource = resource.path("rest").path(BATCH_PATH_NAME);
        String clientResponse = getClientResponse(webResource);
        log.info("clientResponse:" + clientResponse);
        String response = getResponse(webResource, testXml + message);
        log.info("response:" + response);
    }

    /**
     * Returns client response. e.g : GET http://localhost:8080/RESTfulWS/rest/UserInfoService/name/Pavithra returned a
     * response status of 200 OK
     * 
     * @param service
     * @return
     */
    private String getClientResponse(WebResource resource) {
        return resource.accept(MediaType.APPLICATION_XML).post(ClientResponse.class).toString();
    }

    /**
     * Returns the response as XML e.g : <User><Name>Pavithra</Name></User>
     * 
     * @param service
     * @return
     */
    private String getResponse(WebResource resource, String str) {
        return resource.accept(MediaType.APPLICATION_XML).type(MediaType.APPLICATION_XML).post(String.class, str);
    }
}
