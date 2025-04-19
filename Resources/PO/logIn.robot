*** Settings ***
Library             SeleniumLibrary


*** Keywords ***
Enter credentials
    input Text                      email-id    testuser@testus.er
    input Text                      password    ekrfghweituv!!

Click sign-in button
    click Button                    submit-id