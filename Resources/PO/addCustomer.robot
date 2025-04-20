*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Verify add-new-customer-page loaded
    wait until page contains        Add Customer

Enter customer information
    input Text                      EmailAddress        ${NEW_CUSTOMER}[0]
    input Text                      FirstName           ${NEW_CUSTOMER}[1]
    input Text                      LastName            ${NEW_CUSTOMER}[2]
    input Text                      City                ${NEW_CUSTOMER}[3]
    select from List by Index       StateOrRegion       ${NEW_CUSTOMER}[4]
    select Radio Button             gender      male
    select checkbox                 promos-name

Submit customer information
    click Button                    Submit

Verify new-customer-added-page loaded
    wait until page contains        Success! New customer added.