public class ContactAndLeadSearch {
    public Static List<List< SObject>> searchContactsAndLeads(String input){
        List<List<sObject>> searchList = [FIND :input IN NAME FIELDS 
                   RETURNING Contact, Lead];
        return searchList;
    }
}