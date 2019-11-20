table 50000 "Example Setup"
{

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Example Enabled"; Boolean)
        {
            Caption = 'Example Enabled';
        }
        field(10; "Example Person Nos."; Code[20])
        {
            TableRelation = "No. Series";
        }
        field(20; "Example Product Nos."; Code[20])
        {
            TableRelation = "No. Series";
        }

    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    procedure InitSetupRecord();
    begin
        If not get then begin
            Init;
            Insert;
        end;
    end;
}