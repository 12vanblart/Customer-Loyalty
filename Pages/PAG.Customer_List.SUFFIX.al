pageextension 50203 "Customer List.SUFFIX" extends "Customer List"
{
    actions
    {
        addlast(History)
        {
            action(loyalty)
            {
                Caption = 'Loyalty Points';
                Image = LedgerEntries;
                RunObject = page "Loyalty Ledger Entries.SUFFIX";
                RunPageLink = "Customer No.SUFFIX" = field ("No.");
            }
        }
    }
}