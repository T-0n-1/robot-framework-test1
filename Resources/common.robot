*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Begin the Web Test
    log                             Opening the browser
    open Browser                    about:blank     ${BROWSER}

End Web Test
    sleep                           2s
    close Browser