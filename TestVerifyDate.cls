@isTest
public class TestVerifyDate {
    @isTest static void Test_CheckDates_case1(){
        Date D= VerifyDate.CheckDates(date.parse('01/01/2022'), date.parse('01/05/2022'));
        System.assertEquals(date.parse('01/05/2022'), D);
    }
    
    @isTest static void Test_CheckDates_case2(){
       Date D= VerifyDate.CheckDates(date.parse('01/01/2022'), date.parse('05/05/2022'));
       System.assertEquals(date.parse('01/31/2022'), D); 
    }
    
    @isTest static void Test_DateWithin30Days_case1(){
        Boolean Flag=VerifyDate.DateWithin30Days(date.parse('01/01/2022'), date.parse('12/30/2021'));
        System.assertEquals(False,Flag);
    }
    
    @isTest static void Test_DateWithin30Days_case2(){
        Boolean Flag=VerifyDate.DateWithin30Days(date.parse('01/01/2022'), date.parse('02/02/2022'));
        System.assertEquals(False,Flag);
    }
    
    @isTest static void Test_DateWithin30Days_case3(){
        Boolean Flag=VerifyDate.DateWithin30Days(date.parse('01/01/2022'), date.parse('1/15/2022'));
        System.assertEquals(True,Flag);
    }
    
    @isTest static void Test_SetEndOfMonthDate(){
        Date returndate = VerifyDate.SetEndOfMonthDate(date.parse('01/01/2022')); 
    }
}