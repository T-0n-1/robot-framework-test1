*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Verify add-new-customer-page loaded
    wait until page contains        Add Customer

Enter customer information
    input Text                      EmailAddress        John.Doe@myste.ry
    input Text                      FirstName           John
    input Text                      LastName            Doe
    input Text                      City                New York
    select from List by Index       StateOrRegion       7
    select Radio Button             gender      male
    select checkbox                 promos-name

Submit customer information
    click Button                    Submit

Verify new-customer-added-page loaded
    wait until page contains        Success! New customer added.