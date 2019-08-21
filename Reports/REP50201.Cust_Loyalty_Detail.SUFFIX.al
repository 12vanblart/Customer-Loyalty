report 50201 "Cust Loyalty Detail.SUFFIX"
{
    Caption = 'Customer Loyalty Detail';
    DefaultLayout = RDLC;
    RDLCLayout = '.\Resources\REP50201.Cust_Loyalty_Detail.rdl';


    dataset
    {
        dataitem(cust; Customer)
        {
            column(custno; "No.") { }
            column(custName; Name) { }
            dataitem(ledger; "Loyalty Ledger.SUFFIX")
            {
                DataItemLink = "Customer No.SUFFIX" = field ("No.");

                column(Entry_No_SUFFIX; "Entry No.SUFFIX") { }
                column(Document_No_SUFFIX; "Document No.SUFFIX") { }
                column(Posting_Date_SUFFIX; "Posting Date.SUFFIX") { }
                column(Points_SUFFIX; "Points.SUFFIX") { }
                column(invAmt; sih."Amount Including VAT") { }

                trigger OnPreDataItem()
                begin
                    sih.SetAutoCalcFields("Amount Including VAT");
                end;

                trigger OnAfterGetRecord()
                begin
                    clear(sih);
                    if sih.get("Document No.SUFFIX") then;
                end;
            }
        }
    }

    labels
    {
        Cust_LBL = 'Customer';
        DocNo_LBL = 'Documnet No.';
        Date_LBL = 'Posting Date';
        Amt_LBL = 'Amount';
        Points_LBL = 'Points';
        Title_LBL = 'Customer Loyalty Detail';
    }

    var
        sih: Record "Sales Invoice Header";
}