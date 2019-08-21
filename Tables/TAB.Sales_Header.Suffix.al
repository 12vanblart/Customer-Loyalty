tableextension 50201 "Sales Header.SUFFIX" extends "Sales Header"
{
    fields
    {
        // Add changes to table fields here
        field(50200; "loyaltyStatus.SUFFIX"; Enum "Loyalty Status.SUFFIX")
        {
            DataClassification = CustomerContent;
            Caption = 'Loyalty Status';
            Editable = false;
        }
    }
}