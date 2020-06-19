@isTest
public class AddPrimaryContactTest{
 
    public static testMethod void positiveScenario(){
 
        List<Account> acc = new List<Account>();
        for(Integer i=0; i<50; i++){
            acc.add(new Account(Name ='Tom'+i,BillingState ='NY'));
        }
     
        for(Integer i=0; i<50; i++){
            acc.add(new Account(Name ='Tom'+i,BillingState ='CA'));
        }
        insert acc;
     
        Contact c = new Contact();
        c.FirstName = 'Huen';
        c.LastName = 'Patt';
        insert c;
        String state = 'CA';
     
     
        AddPrimaryContact apc = new AddPrimaryContact(c,state);
        Test.startTest();
        System.enqueueJob(apc);
        Test.stopTest();
    }
}