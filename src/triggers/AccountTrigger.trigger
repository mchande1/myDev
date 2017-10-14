trigger AccountTrigger on Account (before insert, before delete, before update, after update) {
	
    for(Account acc: Trigger.new){
        try{
            acc.addError('Test Error Message');
        } catch(Exception e){
            
        }
        
    }
}