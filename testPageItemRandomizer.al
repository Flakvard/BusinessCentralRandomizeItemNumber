page 50101 TestMyRandn
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            group(Randomizer)
            {
                field(Name;myInt)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(Randomize)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    randomizer.GenerateRandomString(myInt);
                end;
            }
        }
    }
    
    var
        myInt: Code[20];
        randomizer : Codeunit RandomStringGeneratororor;
}