*** Settings ***
Library             SeleniumLibrary


*** Variables ***
${LANDINGPAGE_MAIN_HEADING} =   //h2


*** Keywords ***
Load
    [Arguments]    ${url}
    go to                           ${url}

Verify page loaded
    wait until page contains element    ${LANDINGPAGE_MAIN_HEADING}