trigger AccountAddressTrigger on Account (before insert, before Update) {
//if an Account has a Billing Postal Code and 'Match_Billing_Address__c' is true,
// the record should have the Shipping Postal Code set to match
    for(Account acc : trigger.new){   
          if(acc.Match_Billing_Address__c == true && 
             acc.BillingPostalCode!=''){
          	 acc.ShippingPostalCode = acc.BillingPostalCode;         
          }
    }
}