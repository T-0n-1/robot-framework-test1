*** Settings ***
Resource            ../Resources/PO/landingPage.robot
Resource            ../Resources/PO/topNav.robot
Resource            ../Resources/PO/logIn.robot
Resource            ../Resources/PO/customerPage.robot
Resource            ../Resources/PO/addCustomer.robot


*** Keywords ***
Navigate to the CRM page
    [Arguments]    ${url}
    landingPage.Load    ${url}
    landingPage.Verify page loaded

Clicking on the sign-in link
    topNav.Click sign-in-link
    topNav.Verify page loaded

Entering the username and password
    logIn.Enter credentials

Clicking on the submit-id button
    logIn.Click sign-in button
    customerPage.Verify page loaded

Clicking on the new customer button
    customerPage.Click new-customer
    addCustomer.Verify add-new-customer-page loaded

Entering the customer information
    addCustomer.Enter customer information

Clicking on the submit button
    addCustomer.Submit customer information
    addCustomer.Verify new-customer-added-page loaded