tableextension 50201 "Sales Header.SUFFIX" extends "Sales Header"
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