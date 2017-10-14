public class MyContactListController{

	@AuraEnabled
	public static Contact[] getContacts(){
		return [SELECT Id, Name, Email, Title, Phone FROM Contact]; 
	}
}