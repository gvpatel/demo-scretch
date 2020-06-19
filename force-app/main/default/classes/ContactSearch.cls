public class ContactSearch {
    
    public static List<Contact> searchForContacts (String lname, String Zip)
    {
        Contact[] cnt = [SELECT Id, name from Contact where Lastname = :lname 
                           and MailingPostalCode = :zip];
        return cnt;
        
    }

}