public class wrapperAccountController {
    public list<account> initialAcctsList {get; set;}
    public list<wrapperClass> acctWrapList {get; set;}
    public list<account> selectedAcctsList {get; set;}
    public wrapperAccountController(){
        initialAcctsList = [select Name, Industry from Account Limit 5];
    }
    public class wrapperClass{
        public account act {get; set;}
        public boolean isSelected {get; set;}
        public wrapperClass(Account a){
            act = a;
            isSelected = false;
        }        
    }
    //for(Account a: initialAcctsList){
       
    
}