public class opportunityController {
	
    @AuraEnabled
    public static list<opportunity> getOpportunities(){
        return [select Id, Name, CloseDate from opportunity];
    }
}