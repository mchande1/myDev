@isTest
public class AnimalLocatorTest{
	
    @isTest
    Public Static void testCallout(){
        //set mock callout class
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        
        String expectedAnimalName = AnimalLocator.getAnimalNameById(1);
        System.assertEquals('chicken', expectedAnimalName);
        
    }
}