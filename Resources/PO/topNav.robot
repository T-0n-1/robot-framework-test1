*** Settings ***
Library             SeleniumLibrary


*** Variables ***
${TOPNAV_LOGIN_HEADER} =   //h2


*** Keywords ***
Click sign-in-link
    click Link                      sign-in-link

Verify page loaded
    wait until page contains element    ${TOPNAV_LOGIN_HEADER}