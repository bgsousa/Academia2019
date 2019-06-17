public class testcontroller {
    public string myvar {get;set;}
    public integer myvarinteger {get;set;}
    
    public integer myvarinteger2 {
        get {return 999;}
        set {myvarinteger=0;}
    }
    
    public string myvar2 = 'myvar2null';
    
    public testcontroller() {
        myvarinteger=0;
        system.debug('Mensagem do System Debug');
        myvar='Variável';
        string sid = apexpages.currentpage().getparameters().get('id');
            if(sid!=null)
                myvar+=' and ID is '+sid;
            setmyvar2('setmyvar2');
    }
    
    public void setmyvar2(string myvar) {
        this.myvar2 = myvar;
    }
    
    public string getmyvar2() {
        return myvar2;
    }
    
    public pagereference save() {
        myvarinteger+=1;
        setmyvar2('setmyvar2 '+myvarinteger);
        return null;
    }
}