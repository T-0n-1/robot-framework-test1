*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Load
    go to                           ${URL}

Verify page loaded
    wait until page contains        Customers Are Priority One