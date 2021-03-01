import com.sap.gateway.ip.core.customdev.util.Message;
import java.util.HashMap;

def Message log(Message message) {
	map = message.getProperties();
    message.setHeader("SAP_IsIgnoreProperties",new Boolean(true));
	def body = message.getBody(java.lang.String) as String;
	def messageLog = messageLogFactory.getMessageLog(message);
	messageLog.addAttachmentAsString("log_neverbounce", body, "text/plain");
		
	return message;
}
