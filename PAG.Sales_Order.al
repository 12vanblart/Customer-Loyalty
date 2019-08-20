pageextension 50201 "Sales Order.SUFFIX" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("loyaltyStatus.SUFFIX"; "loyaltyStatus.SUFFIX") { }
        }
    }
}