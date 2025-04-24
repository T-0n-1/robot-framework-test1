*** Settings ***
Library             SeleniumLibrary


*** Variables ***
${CUSTOMERPAGE_MAIN_HEADER} =           //h2


*** Keywords ***
Verify page loaded
    wait until page contains element    ${CUSTOMERPAGE_MAIN_HEADER}

Click new-customer
    click Link                          new-customer