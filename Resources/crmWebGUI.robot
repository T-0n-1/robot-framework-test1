*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Navigate to the CRM page
    go to                           https://www.automationplayground.com/crm/
    wait until page contains        Customers Are Priority One

Clicking on the sign-in link
    click Link                      sign-in-link
    wait until page contains        Login

Entering the username and password
    input Text                      email-id    testuser@testus.er
    input Text                      password    ekrfghweituv!!

Clicking on the submit-id button
    click Button                    submit-id
    wait until page contains        Our Happy Customers

Clicking on the new customer button
    click Link                      new-customer
    wait until page contains        Add Customer

Entering the customer information
    input Text                      EmailAddress        John.Doe@myste.ry
    input Text                      FirstName           John
    input Text                      LastName            Doe
    input Text                      City                New York
    select from List by Index       StateOrRegion       7
    select Radio Button             gender      male
    select checkbox                 promos-name

Clicking on the submit button
    click Button                    Submit
    wait until page contains        Success! New customer added.