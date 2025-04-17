*** Settings ***
Documentation       This is some basic information about the whole SUITE
Library             SeleniumLibrary

# Run the script with command:
# robot -d Results ./Tests/crm.robot

*** Variables ***


*** Test Cases ***
Should be able to add new customer
    [Documentation]                 This is some basic information about the TEST
    [Tags]                          1006    Smoke   Contacts

    log                             Starting the test case

    log                             Opening the browser
    open Browser                    https://www.automationplayground.com/crm/     chrome
    wait until page contains        Customers Are Priority One

    log                             Clicking on the sign-in link
    click Link                      sign-in-link
    wait until page contains        Login

    log                             Entering the username and password
    input Text                      email-id    testuser@testus.er
    input Text                      password    ekrfghweituv!!

    log                             Clicking on the submit button
    click Button                    submit-id
    wait until page contains        Our Happy Customers

    log                             Clicking on the new customer button
    click Link                      new-customer
    wait until page contains        Add Customer

    log                             Entering the customer information
    input Text                      EmailAddress        John.Doe@myste.ry
    input Text                      FirstName           John
    input Text                      LastName            Doe
    input Text                      City                New York
    select from List by Index       StateOrRegion       7
    select Radio Button             gender      male
    select checkbox                 promos-name

    log                             Clicking on the submit button
    click Button                    Submit
    wait until page contains        Success! New customer added.

    sleep                           2s
    close Browser

*** Keywords ***