public class ContactSearch {
	
    public Static List<Contact> searchForContacts(String lastName, String postalCode){
        List<Contact> queriedContacts = [select id, Name from Contact where LastName =: lastName and
                                         MailingPostalCode =: postalCode];
        return queriedContacts;
    }
}