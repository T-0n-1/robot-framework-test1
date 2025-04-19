*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Click sign-in-link
    click Link                      sign-in-link

Verify page loaded
    wait until page contains        Login