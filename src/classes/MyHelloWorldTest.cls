@isTest
public class MyHelloWorldTest {
   static testMethod void test_addHelloworld(){
   		Account testAccount1 = new Account();
   		Account testAccount2 = new Account(Description = 'Foo');
   		list<Account> accList = new list<Account>{testAccount1, testAccount2};
   		MyHelloWorld.addHelloWorld(accList);
   		System.assertEquals('Hello World', accList[0].description);
   		System.assertEquals('Hello World', accList[1].Description);
   } 
   
   static testMethod void test_helloWorldAccountTrigger(){
   		Account testAccount1 = new Account(Name = 'One');
   		Account testAccount2 = new Account(Name = 'Two', Description = 'Foo');
   		List<Account> accList = new List<Account>{testAccount1, testAccount2};
   		insert accList;
   		
   		List<Account> accQuery = [SELECT Id, Description FROM Account where Id =: accList[0].Id or Id =: accList[1].Id];
   		System.assertEquals('Hello World', accQuery[0].Description);
   		System.assertEquals('Hello World', accQuery[1].Description);
   }
}