*** Settings ***
Library    SeleniumLibrary
Resource      ../keywords/web_keywords.robot

*** Keywords ***
Open Login Page
    [Arguments]    ${BASE_URL}
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id:user-name

Close Browser
    Close Browser
