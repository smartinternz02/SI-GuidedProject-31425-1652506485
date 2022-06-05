public class AddPrimaryContact implements Queueable{
    
    private Contact con;
    private String state;
    
    public AddPrimaryContact(Contact con,String state){
        
        this.con = con;
        this.state = state;
    }
    
    public void execute(QueueableContext context){
        List<Account> accounts = [Select ID, Name , (Select FirstName , LastName , Id from Contacts)
                                 from Account where BillingState = :state Limit 200];
        List<Contact> primaryContacts = new List<Contact>();
        
        for(Account a:accounts){
            Contact c = con.clone();
            c.AccountId = a.Id;
            primaryContacts.add(c);
        }
        if(primaryContacts.size()>0){
            insert primaryContacts;
        }
    }

}