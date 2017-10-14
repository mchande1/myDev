trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Id> optyId = new List<Id>();
    for(Opportunity opty: trigger.new){
        if(opty.StageName == 'Closed Won'){
            optyId.add(opty.Id);
        }
    }
    List<Task> taskList = new List<Task>();
    for(Id oppid: optyId){
		Task t = new Task();
        t.WhatId = oppid;
        t.Subject = 'Follow Up Test Task';
        t.Status = 'Not Started';
        taskList.add(t);
    }
    //Create tasks 
    if(taskList.size() > 0)  {insert taskList;}
}