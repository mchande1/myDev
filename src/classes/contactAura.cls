public class contactAura {
	
    @AuraEnabled
    public static list<contact> get10Contacts(){
        return [select id, name, phone from contact limit 10];
    }
}