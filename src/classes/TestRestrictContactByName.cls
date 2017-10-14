@isTest
public with sharing class TestRestrictContactByName {
    @isTest
    static void testingTrigger(){
    	Contact con = new Contact();
    	con.FirstName = 'Mohan';
    	con.LastName = 'INVALIDNAME';
    	insert con;
    	
    	List<Contact> con1 = [select id, name from Contact where FirstName = 'Mohan'
    					 and LastName = 'INVALIDNAME'];
    	System.assertEquals(0, Con1.size());
    }
}