public with sharing class AccountController {
    public AccountController() {
    }    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return [ SELECT Id,name,  type, phone, industry FROM Account LIMIT 10];
        
    }    

    @AuraEnabled
    public static List<Account> getAccountRecordsList(){
        return [ SELECT Id,name, type, phone, industry FROM Account LIMIT 10];
        
    }    

}