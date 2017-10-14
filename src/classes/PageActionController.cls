public class PageActionController {
    public Account acct {get; set;}
    public boolean showPageBlock {get; set;}
    public PageActionController(){
        if(acct == null) showPageBlock = false;
        else
            acct = [select Name, Industry, Description from Account where id =: ApexPages.currentPage().getParameters().get('id') ];
    }
    public pagereference actionMethod(){
        if(acct == null){}
        else{
            acct.description = 'This is updated from the action method';
        	update acct;
        }
        return null;
    }
}