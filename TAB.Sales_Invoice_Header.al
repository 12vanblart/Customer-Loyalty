tableextension 50202 "Sales Invoice Header.SUFFIX" extends "Sales Invoice Header"
{
    fields
    {
        // Add changes to table fields here
        field(50200; "loyaltyStatus.SUFFIX"; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers = Bronze,Silver,Gold;
            Caption = 'Loyalty Status';
            Editable = false;
        }
    }
}