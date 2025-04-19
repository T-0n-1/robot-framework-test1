*** Settings ***
Documentation       This is some basic information about the whole SUITE
Resource            ../Resources/common.robot
Resource            ../Resources/crmWebGUI.robot
Test Setup          common.Begin the Web Test
Test Teardown       common.End Web Test

# Run the script with command:
# robot -d Results ./Tests/crm.robot


*** Variables ***
${BROWSER} =       chrome
${URL} =           https://www.automationplayground.com/crm/
${USER_EMAIL} =    testuser@testus.er
${PASSWORD} =      ekrfghweituv!!




*** Test Cases ***
Should be able to add new customer
    [Documentation]                 This is some basic information about the TEST
    [Tags]                          Smoke
    crmWebGUI.Navigate to the CRM page
    crmWebGUI.Clicking on the sign-in link
    crmWebGUI.Entering the username and password
    crmWebGUI.Clicking on the submit-id button
    crmWebGUI.Clicking on the new customer button
    crmWebGUI.Entering the customer information
    crmWebGUI.Clicking on the submit button