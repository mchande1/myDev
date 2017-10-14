global class ContactWrapper {
	
    public Boolean isSelected {get; set;}
    public Contact cont {get; set;}
    
    public ContactWrapper(Contact con, Boolean isSelected){
        this.cont = con;
        this.isSelected = isSelected;
    }
}