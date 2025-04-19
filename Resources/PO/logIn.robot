*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Enter credentials
    input Text                      email-id    ${USER_EMAIL}
    input Text                      password    ${PASSWORD}

Click sign-in button
    click Button                    submit-id