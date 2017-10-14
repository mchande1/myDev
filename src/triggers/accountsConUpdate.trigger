//when ever we are updating any account record the description field of the contacts under the account record are updated

trigger accountsConUpdate on Account (before update) {
    List<Account> accList = [select id, name, (select firstname, lastname, salutation from contacts) from Account 
                             where id IN: Trigger.newMap.keyset() ];
    List<contact> contactsToUpdate = new List<contact>();
        for(account a: accList){
            if(a.contacts != null){
                for(contact c: a.contacts){
                    c.description = c.salutation + ' ' + c.firstname + ' ' + c.lastname + ' is a good contact';
                    contactsToUpdate.add(c);
                }
            }
        }
        if(contactsToUpdate != null){
            update contactsToUpdate;
        }    
    system.debug('Total number of soql queries run: ' + limits.getQueries());
    system.debug('Total number of DML operations performed: '+ limits.getDmlStatements());
    system.debug('Total number of records processed: ' + limits.getDmlRows());
}