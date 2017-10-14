@isTest
public class ContactNumberChangeTest {

    @isTest
    public static void testContactNumberChange(){
        Account acc = new Account(Name = 'ATS Computing');
        insert acc;
        Contact con = new Contact();
        con.AccountId = acc.Id;
        con.FirstName = 'Gopal';
        con.LastName = 'M';
        con.MobilePhone = '123';
        insert con;
        System.assertEquals(acc.Phone, con.MobilePhone);
        con.MobilePhone = '1234';
        update con;
        System.assertEquals(acc.Phone, con.MobilePhone);
    }
}