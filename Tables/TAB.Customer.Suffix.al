tableextension 50200 "Customer.SUFFIX" extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50200; "loyaltyStatus.SUFFIX"; Enum "Loyalty Status.SUFFIX")
        {
            DataClassification = CustomerContent;
            Caption = 'Loyalty Status';
        }
    }
}