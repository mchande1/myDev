public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numContacts, String lastName){
    	List<Contact> conList = new List<Contact>();
    	for(Integer i=0; i<numContacts; i++){
    		Contact con = new Contact();
    		con.FirstName = 'TestContact' + i;
    		con.LastName = lastName;
    		conList.add(con);
    	}
    	return conList;
    }
}