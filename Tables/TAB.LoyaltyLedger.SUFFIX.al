table 50200 "Loyalty Ledger.SUFFIX"
{
    DataClassification = CustomerContent;
    Caption = 'Loyalty Ledger Entries';

    fields
    {
        field(1; "Entry No.SUFFIX"; BigInteger)
        {
            DataClassification = CustomerContent;
            Caption = 'Entry No.';
            AutoIncrement = true;
        }

        field(2; "Posting Date.SUFFIX"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Posting Date';
        }

        field(3; "Customer No.SUFFIX"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Customer No.';
            TableRelation = Customer."No.";
        }

        field(4; "Document No.SUFFIX"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Document No.';
            TableRelation = "Sales Invoice Header"."No.";
        }

        field(5; "Points Earned.SUFFIX"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Points Earned';
            ObsoleteState = Removed;
        }
        field(6; "Earned Points.SUFFIX"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Points Earned';
            ObsoleteState = Removed;
        }
        field(7; "Points.SUFFIX"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Points';
        }
    }

    keys
    {
        key(PK; "Entry No.SUFFIX")
        {
            Clustered = true;
        }
        key(custDoc; "Customer No.SUFFIX", "Document No.SUFFIX") { }
        key(custDate; "Customer No.SUFFIX", "Posting Date.SUFFIX") { }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}