public with sharing class contactListController {
	@AuraEnabled
    public static list<contact> findAll(){
        return [select id, name, phone from contact limit 30];
    }
    
    @AuraEnabled
    public static list<contact> findByName(string searchKey){
        string name = '%'+searchKey+'%';
        return [select id, name, phone from contact where name like: name];
    }
    
    @AuraEnabled
    public static list<contact> findById(string contactID){
        return [select id, name, phone from contact where id =: contactID];
    }
}