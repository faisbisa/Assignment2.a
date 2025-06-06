*** Settings ***
Library         SeleniumLibrary
Library         ../keywords/web_keywords.py
Resource        ../keywords/login_keywords.robot
Resource        ../keywords/product_keywords.robot
Resource        ../keywords/checkout_keywords.robot
Resource        ../pages/login_page.robot
Resource        ../resources/variables.robot
Resource        ../pages/product_page.robot


Suite Setup     Open Login Page    ${BASE_URL}
Suite Teardown    Run Keyword And Ignore Error    Close Browser

*** Test Cases ***
Shopping Cart Checkout
    [Tags]    Checkout    Gherkin
    Given I Log In As Standard User
    When I Add Item To Cart
    And I Proceed To Checkout
    Then I Should See Order Completion Page

*** Keywords ***
Given I Log In As Standard User
    Login As Standard User
    Sleep    2s

When I Add Item To Cart
    Add Item To Cart
    Sleep    2s

And I Proceed To Checkout
    Checkout Process
    Sleep    2s

Then I Should See Order Completion Page
    Verify Order Complete
    Sleep    2s