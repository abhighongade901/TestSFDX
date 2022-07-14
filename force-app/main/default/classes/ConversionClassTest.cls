@isTest
public class ConversionClassTest {
    @isTest
    private static void insertRecords(){
         Account acc=new Account();
        acc.Name='aet';
        insert acc;
        Lead ld=new Lead();
        ld.FirstName='Test1';
        ld.LastName='Test3';
        ld.company='aet';
        ld.email='avc@gmail.com';
        insert ld;
    }
   
}