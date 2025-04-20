*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Begin the Web Test
    [Arguments]                     ${browser}
    log                             Opening the browser "${browser}"
    open Browser                    about:blank     ${browser}

End Web Test
    sleep                           2s
    close Browser