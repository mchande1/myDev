public class NewCaseListController {
	
    public List<Case> getNewCases(){
        List<Case> caseList = [select id, CaseNumber from Case where Status = 'New'];
        return caseList;
    }
}