@isTest
public class TestVerifyDate {
    @isTest
    static void testingMethod(){
    	Date dt = System.today();
    	Date date2 = dt.addDays(40);
    	Date date3 = dt.addDays(20);
    	VerifyDate.checkDates(dt, date2);
		VerifyDate.checkDates(dt, date3);
    }
}