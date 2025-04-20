*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Begin the Web Test
    [Arguments]                     ${BROWSER}
    log                             Opening the browser "${BROWSER}"
    open Browser                    about:blank     ${BROWSER}

End Web Test
    sleep                           2s
    close Browser