*** Variables ***
${BASE_URL}         https://www.saucedemo.com
${STANDARD_USER}    standard_user
${PASSWORD}         secret_sauce

${USERNAME_FIELD}   id:user-name
${PASSWORD_FIELD}   id:password
${LOGIN_BUTTON}     id:login-button

${ADD_TO_CART_BTN}  xpath://button[contains(@id, 'add-to-cart')]
${CART_ICON}        class:shopping_cart_link
${CHECKOUT_BTN}     id:checkout
${FIRST_NAME}       id:first-name
${LAST_NAME}        id:last-name
${POSTAL_CODE}      id:postal-code
${CONTINUE_BTN}     id:continue
${FINISH_BTN}       id:finish
${ORDER_CONFIRM}    class:complete-header
