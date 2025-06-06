# Test Plan: SauceDemo Checkout Journey

## Objective
Ensure a user can complete a shopping cart checkout on saucedemo.com

## Tools
- Robot Framework
- Python
- SeleniumLibrary

## Test Cases

### TC01: Login as Standard User
- Open login page
- Enter credentials
- Click login
- ✅ Expect: redirect to products page

### TC02: Add Item to Cart
- Click "Add to cart"
- ✅ Expect: cart icon updates

### TC03: Checkout Flow
- Click cart icon
- Fill checkout form
- Click Finish
- ✅ Expect: thank you message
