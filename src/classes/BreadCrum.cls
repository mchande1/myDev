public class BreadCrum {
    public boolean renderSection1 {get;set;}
    public boolean renderSection2 {get;set;}
    public boolean renderSection3 {get;set;}
    public BreadCrum () {
        renderSection1 = true;
        renderSection2 = false;
        renderSection3 = false;
    }
    public void displaySection1() {
        renderSection1 = true;
        renderSection2 = false;
        renderSection3 = false;
    }
    public void displaySection2() {
        renderSection1 = false;
        renderSection2 = true;
        renderSection3 = false;
    }
    public void displaySection3() {
        renderSection1 = false;
        renderSection2 = false;
        renderSection3 = true;
    }
}