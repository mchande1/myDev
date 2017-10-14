public class NewTestClass {
	
    public NewTestClass(){
        System.debug('I am in constructor');
        newTestMethod();
    }
    
    public void newTestMethod(){
        System.debug('I am in test method');
    }
}