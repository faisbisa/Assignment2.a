*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Login Page
    [Arguments]    ${url}
    Open Browser    ${url}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${USERNAME_FIELD}    10s

Close Browser
    Close Browser
