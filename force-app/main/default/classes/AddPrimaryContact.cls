public class AddPrimaryContact implements Queueable{

    private Contact ct;
    private String st;
 
    public AddPrimaryContact(Contact ct,String state){
        this.ct = ct;
        this.st = state;
    }
 
    public void execute(QueueableContext context){
   
       List<Account> accs = [SELECT ID, Name ,(Select id,FirstName,LastName from contacts ) FROM ACCOUNT WHERE BillingState = :st LIMIT 200];
       List<Contact> con = new List<Contact>();
       for(Account ac : accs){
       
           Contact c = ct.clone(false,false,false,false);
           c.AccountId = ac.Id;
           con.add(c);
       }
       if(con.size()>0){
           insert con;
       }
    }
}