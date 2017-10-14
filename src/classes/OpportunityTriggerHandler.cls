public class OpportunityTriggerHandler {
	
    public static void singleOppValidator(List<Opportunity> newOpportunities){
        
        Set<Id> accIdSet = new Set<Id>();
        
        Map<Id, List<Opportunity>> accOppMap = new Map<Id, List<Opportunity>>();
        
        for(Opportunity opty: newOpportunities){
            if(accOppMap.containsKey(opty.AccountId)){
                accOppMap.get(opty.AccountId).add(opty);
            } else {
                accOppMap.put(opty.AccountId, new List<Opportunity>{opty});
            }
        }
        
        for(Id accId: accOppMap.keySet()){
            if(accOppMap.get(accId).size() > 1){
                for(Opportunity opp: accOppMap.get(accId)){
                    opp.addError('');
                }
            }
        }
        
        //Query for opty's for the Account
        Map<Id, Account> accMap = new Map<Id, Account>([select Id, (select Id from Opportunities) from Account where Id =: accIdSet]);
        
        for(Opportunity opty: newOpportunities){
            if(!accMap.isEmpty() && accMap.containsKey(opty.AccountId)  && accMap.get(opty.AccountId).Opportunities.size() > 0){
                opty.addError('You cannot have more than one opportunity for Account');
            }
        }
    }
}