*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Load
    [Arguments]    ${url}
    go to                           ${url}

Verify page loaded
    wait until page contains        Customers Are Priority One