public with sharing class expenseController {
	
    @AuraEnabled
    public static list<Expense__c> getExpenses(){
        return [select Id, Name, Amount__c, Client__c, Date__c,
                Reimbursed__c, CreatedDate from Expense__c];
    }
    
    @AuraEnabled
    public static Expense__c saveExpense(Expense__c expense){
        upsert expense;
        return expense;
    }
}