*** Variables ***
${CHECKOUT_BTN}      id:checkout
${FIRST_NAME_FIELD}  id:first-name
${LAST_NAME_FIELD}   id:last-name
${POSTAL_CODE}       id:postal-code
${CONTINUE_BTN}      id:continue
${FINISH_BTN}        id:finish

*** Keywords ***
Click Checkout Button
    Click Button    ${CHECKOUT_BTN}

Fill Checkout Info
    [Arguments]    ${first}    ${last}    ${zip}
    Input Text    ${FIRST_NAME_FIELD}    ${first}
    Input Text    ${LAST_NAME_FIELD}     ${last}
    Input Text    ${POSTAL_CODE}         ${zip}

Click Continue And Finish
    Click Button    ${CONTINUE_BTN}
    Click Button    ${FINISH_BTN}