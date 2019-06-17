public without sharing class ContactController {

    public ContactController() {

    }


    public ContactController(ApexPages.StandardController controller) {

    }

    public string inputfirstname {get;set;}
    public string inputlastname {get;set;}
    public string inputphone {get;set;}
    public string inputemail {get;set;}
    
    public void save(){
        contact c = new contact();
        c.firstname = inputfirstname;
        c.lastname = inputlastname;
        c.phone = inputphone;
        c.email = inputemail;
        insert c;
}
}