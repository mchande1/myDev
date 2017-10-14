trigger smapleTrigger on Account (before insert, before update) {
    for(Account a: trigger.new){
        a.description = a.name + 'Test'; 
    }
}