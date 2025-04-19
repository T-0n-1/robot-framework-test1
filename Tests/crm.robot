*** Settings ***
Documentation       This is some basic information about the whole SUITE
Resource            ../Resources/common.robot
Resource            ../Resources/crmWebGUI.robot

# Run the script with command:
# robot -d Results ./Tests/crm.robot

*** Test Cases ***
Should be able to add new customer
    [Documentation]                 This is some basic information about the TEST
    [Tags]                          Smoke
    common.Begin the Web Test
    crmWebGUI.Navigate to the CRM page
    crmWebGUI.Clicking on the sign-in link
    crmWebGUI.Entering the username and password
    crmWebGUI.Clicking on the submit-id button
    crmWebGUI.Clicking on the new customer button
    crmWebGUI.Entering the customer information
    crmWebGUI.Clicking on the submit button
    common.End Web Test