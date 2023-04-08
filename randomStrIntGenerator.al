codeunit 50102 RandomStringGeneratororor
{
    procedure GenerateRandomString(var RandomString: Code[20])
    var
        i: Integer;
        str: Text[12];
        charSet: Text[36];

    begin
        charSet := 'abcdefghijklmnopqrstuvwxyz0123456789';
        for i := 1 to 12 do
            str += charSet[Random(36) + 1];
        Message(str);
        RandomString := str
    end;


}
