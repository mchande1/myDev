public class EmailMissionSpecialist {
    
    public void sendEmail(String address, String subject, String body){
        
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        String[] toAddress = new String[]{address};
        mail.setToAddresses(toAddress);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        
        Messaging.SendEmailResult[] results = Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        
        inspectResults(results);
        
    }
    
    private static Boolean inspectResults(Messaging.SendEmailResult[] results){
    	Boolean sendResult = true;
    	
    	for(Messaging.SendEmailResult res : results){
    		if(res.isSuccess()){
    			System.debug('Email sent successfully');
    		} else {
    			sendResult = false;
    			System.debug('The following error occured:' + res.getErrors());
    		}
    	} 
    	return sendResult;   	
    }
    
    public static void testDebug(){
    	System.debug('Hello Mohan');
    }
}