public with sharing class MyHelloWorld {
    public static void addHelloWorld(Account[] acts){
    	for(Account a: acts){
    		if(a.description != 'Hello World'){
    			a.description = 'Hello World';
    		}
    	}
    }    
}