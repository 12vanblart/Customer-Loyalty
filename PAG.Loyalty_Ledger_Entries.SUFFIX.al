page 50200 "Loyalty Ledger Enries.SUFFIX"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Loyalty Ledger.SUFFIX";
    Caption = 'Loyalty Ledger Entries';
    SourceTableView = sorting ("Customer No.SUFFIX", "Posting Date.SUFFIX");
    Editable = false;

    layout
    {
        area(Content)
        {
            repeater(ledgerEntriesRptr)
            {
                field("Entry No.SUFFIX"; "Entry No.SUFFIX")
                {
                    ApplicationArea = All;

                }
                field("Posting Date.SUFFIX"; "Posting Date.SUFFIX")
                {
                    ApplicationArea = All;

                }
                field("Customer No.SUFFIX"; "Customer No.SUFFIX")
                {
                    ApplicationArea = All;

                }
                field("Document No.SUFFIX"; "Document No.SUFFIX")
                {
                    ApplicationArea = All;

                }
                field("Points Earned.SUFFIX"; "Points Earned.SUFFIX")
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}