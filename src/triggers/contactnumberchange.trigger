// Test trigger created for some developer fourm question. Its in activated now 


trigger contactnumberchange on Contact (before insert,before update) { 
    System.debug('Trigger initailized on contact insert');
    List<account> li = new list<Account>();  
    List<Id> ids = new List<Id>();  
    for(Contact c: trigger.new)  
        ids.add(c.AccountId);  
    Map<Id, Account> accountMap = new Map<Id, Account>([Select Id, Phone From Account Where Id In :ids]); 
 
    for(Contact c: trigger.new) 
    { 
        Account a = accountMap.get(c.AccountId); 
        System.debug(a);
        if(a != null) 
        { 
            System.debug(a.Phone + '+++++++++++++' + c.MobilePhone);
            a.Phone= c.MobilePhone; 
            System.debug(a.Phone + '+++++++++++++' + c.MobilePhone);
            li.add(a); 
        } 
    } 
    System.debug(li[0].Phone);
    update li;  
    System.debug(li[0].Phone);
}