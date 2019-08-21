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
            action(XML)
            {
                Caption = 'Xml Test';
                Image = "8ball";
                RunObject = xmlport "Export Loyalty Data.SUFFIX";
            }
        }
    }

    var
        myInt: Integer;
}

