*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/variables.robot

*** Keywords ***
Checkout Process
    Click Button    ${CHECKOUT_BTN}
    Input Text      ${FIRST_NAME}    John
    Input Text      ${LAST_NAME}     Doe
    Input Text      ${POSTAL_CODE}   12345
    Click Button    ${CONTINUE_BTN}
    Click Button    ${FINISH_BTN}

Verify Order Complete
    Page Should Contain Element    ${ORDER_CONFIRM}
