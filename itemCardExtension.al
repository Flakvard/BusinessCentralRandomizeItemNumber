pageextension 50104 ItemExtension extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
    }
    
    actions
    {
        // Add changes to page actions here
        addbefore(CopyItem)
        {
            action(Randomize)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    randomizer.GenerateRandomString(Rec."No.");
                    CurrPage.Update();
                end;
            }
        }

    }
    
    var
        myInt: Text[12];
        randomizer : Codeunit RandomStringGeneratororor;
}