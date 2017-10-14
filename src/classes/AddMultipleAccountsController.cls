public class AddMultipleAccountsController {
	
    Account account = new Account();
    public List<Account> listAccount {get; set;}
    
    public AddMultipleAccountsController(){
        listAccount = new List<Account>();
        listAccount.add(account);
    }
    
    public void addAccount(){
        Account acc = new Account();
        listAccount.add(acc);
    }
    
}