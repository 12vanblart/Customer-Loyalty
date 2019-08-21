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

            action(loyaltyReport)
            {
                Caption = 'Detailed Loyalty Report';
                Image = Report;
                trigger OnAction()
                var
                    cust: Record Customer;
                begin
                    cust := rec;
                    cust.SetRecFilter();
                    Report.RunModal(Report::"Cust Loyalty Detail.SUFFIX", true, false, cust);
                end;
            }
        }
    }
}