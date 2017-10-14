trigger MasterTrigger on Master__c (before update, after update) {
	
 	System.debug('Trigger got fired on update of rollup summary field');
    
}