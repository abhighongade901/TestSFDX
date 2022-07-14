public class ConversionClass {
    
    public static void insertRecords(List<Lead> leadRecords)
    {
        set<string> companyNameset=new set<string>();
        
      //  map<String,lead> mapcompanyNameVslead =new map<String,lead>();
        
        for(lead ld:leadRecords){
            
            companyNameset.add(ld.company);
         //   mapcompanyNameVslead.put(ld.company,ld);    
        }
        Map<string,id> accmap=new Map<string,id>();
        List<Account> accList=[select id,Name from account where Name IN : companyNameset];
        
        for(Account acc:accList){
            accmap.put(acc.Name,acc.id);
        }
        
        list<contact> conlist=new list<contact>();
        for(lead ld  :leadRecords){
            if(accmap.containsKey(ld.company) || accmap.containsKey(ld.Company.toLowerCase()))	{
                system.debug('accmap'+accmap);
                id accid =  accmap.get(ld.company);
                contact con=new contact();
                if(ld.FirstName !=null)
                {
                    con.FirstName=ld.FirstName;
                }
                if(ld.LastName !=null)
                {
                    con.LastName=ld.LastName;
                }
                
                con.Email=ld.Email;
                con.accountid=accid;
                conlist.add(con);
            }
        }
        insert conlist;
    }}