codeunit 50017 "Post Code Info."
{
    trigger OnRun()
    begin

    end;

    procedure GetCityByPostCode(PostCode: Code[20]): Text[30]
    var
        PostCodeCatalog: Record "Post Code";
    begin
        PostCodeCatalog.SetRange(Code, PostCode);
        PostCodeCatalog.FindFirst();
        exit(PostCodeCatalog.City);
    end;
}