*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot
Resource   ../pages/login_page.robot

*** Keywords ***
Login As Standard User
    [Arguments]    ${username}=${STANDARD_USER}    ${password}=${PASSWORD}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text    ${PASSWORD_FIELD}    ${password}
    Click Button  ${LOGIN_BUTTON}
    
    ${alert_present}=    Run Keyword And Return Status    Wait Until Alert Is Present    3s
    Run Keyword If    '${alert_present}' == 'True'    Handle Alert

    Wait Until Page Contains Element  ${ADD_TO_CART_BTN}

