trigger AccountAddressTrigger on Account (before insert, before update) {
    for(Account act: trigger.new){
        if(act.Match_Billing_Address__c == true){
            act.ShippingPostalCode = act.BillingPostalCode;
        }
    }
}