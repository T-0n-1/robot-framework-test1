*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Load
    go to                           https://www.automationplayground.com/crm/

Verify page loaded
    wait until page contains        Customers Are Priority One