trigger OpportunityTrigger on Opportunity (before insert) {
	
    if(Trigger.isBefore && Trigger.isInsert){
        OpportunityTriggerHandler.singleOppValidator(Trigger.New);
    }
    
    if(Trigger.isBefore && Trigger.isUpdate){
        OpportunityTriggerHandler.singleOppValidator(Trigger.New);
    }    
}