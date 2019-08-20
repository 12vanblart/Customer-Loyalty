pageextension 50202 "Posted Sales Invoice.SUFFIX" extends "Posted Sales Invoice"
{
    layout
    {
        addlast(General)
        {
            field("loyaltyStatus.SUFFIX"; "loyaltyStatus.SUFFIX") { }
        }
    }
}