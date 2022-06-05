@isTest
public class AnimalLocatorTest {
    
    @isTest static void AnimalLocatorMock1(){
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        string result = AnimalLocator.getAnimalNameById(3);
        string expectedResult = 'chicken';
        System.assertEquals(result, expectedResult);
    }

}