xmlport 50200 "Export Loyalty Data.SUFFIX"
{
    UseRequestPage = false;
    Direction = Export;

    schema
    {
        textelement(NodeName1)
        {
            tableelement(ledger; "Loyalty Ledger.SUFFIX")
            {
                fieldattribute(CustNo; ledger."Customer No.SUFFIX") { }
                fieldattribute(DocNo; ledger."Document No.SUFFIX") { }
                fieldattribute(PostDate; ledger."Posting Date.SUFFIX") { }
                fieldattribute(Points; ledger."Points.SUFFIX") { }
            }
        }
    }
}