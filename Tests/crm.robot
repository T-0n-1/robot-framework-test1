*** Settings ***
Documentation       This is some basic information about the whole SUITE
Resource            ../Resources/common.robot
Resource            ../Resources/crmWebGUI.robot
Test Setup          common.Begin the Web Test   chrome
Test Teardown       common.End Web Test

# Run the script with command:
# robot -d Results ./Tests/crm.robot


*** Variables ***
${URL} =            https://www.automationplayground.com/crm/
${USER_EMAIL} =     testuser@testus.er
${PASSWORD} =       ekrfghweituv!!
@{NEW_CUSTOMER} =   John.Doe@myste.ry   John    Doe     New York    7


*** Test Cases ***
Should be able to add new customer
    [Documentation]                 This is some basic information about the TEST
    [Tags]                          Smoke
    crmWebGUI.Navigate to the CRM page      ${URL}
    crmWebGUI.Clicking on the sign-in link
    crmWebGUI.Entering the username and password
    crmWebGUI.Clicking on the submit-id button
    crmWebGUI.Clicking on the new customer button
    crmWebGUI.Entering the customer information
    crmWebGUI.Clicking on the submit button