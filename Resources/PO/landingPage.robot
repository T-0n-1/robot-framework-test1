*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Load
    [Arguments]    ${URL}
    go to                           ${URL}

Verify page loaded
    wait until page contains        Customers Are Priority One