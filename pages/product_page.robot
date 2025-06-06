*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${ADD_TO_CART_BUTTON}    xpath://button[contains(@data-test,'add-to-cart-sauce-labs-backpack')]
${CART_ICON}             class:shopping_cart_link

*** Keywords ***
Click Add To Cart Button
    Wait Until Element Is Visible    ${ADD_TO_CART_BUTTON}
    Click Button    ${ADD_TO_CART_BUTTON}

Click Cart Icon
    Wait Until Element Is Visible    ${CART_ICON}
    Click Element    ${CART_ICON}
