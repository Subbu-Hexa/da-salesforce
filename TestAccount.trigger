trigger TestAccount on Account (after insert) {
    List<Contact> conLst = new List<Contact>();
    for (Account acc : Trigger.new){
        Contact c = new Contact();
        c.AccountId = acc.Id;
        c.LastName = acc.Name;
        conLst.add(c);
    }
      if(conLst.size()>1)
          insert conLst;
}