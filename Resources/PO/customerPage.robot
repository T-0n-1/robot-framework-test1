*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Verify page loaded
    wait until page contains        Our Happy Customers

Click new-customer
    click Link                      new-customer