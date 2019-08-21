pageextension 50200 "Customer Card.SUFFIX" extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addlast(General)
        {
            field("loyaltyStatus.SUFFIX"; "loyaltyStatus.SUFFIX")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
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

    var
        myInt: Integer;
}

