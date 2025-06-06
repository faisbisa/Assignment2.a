README - SauceDemo Checkout Automation
📌 Overview
Project ini bertujuan untuk mengautomasi user journey dari login hingga checkout produk di situs https://www.saucedemo.com, dengan pendekatan Page Object Model dan Gherkin-style test case.
🧱 Project Structure

saucedemo_automation/
├── tests/
│   └── shopping_cart.robot
├── keywords/
│   ├── login_keywords.robot
│   ├── product_keywords.robot
│   └── checkout_keywords.robot
├── pages/
│   ├── login_page.robot
│   ├── product_page.robot
│   └── checkout_page.robot
├── resources/
│   └── variables.robot
├── README.md

⚙️ Setup Environment
1. Install Python
Install versi minimal Python 3.8+. Gunakan pyenv (opsional) di Mac.

```bash
brew install pyenv
pyenv install 3.11.5
pyenv global 3.11.5
```
2. Buat Virtual Environment

```bash
python3 -m venv robot-env
source robot-env/bin/activate
```
3. Install Dependencies

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
# (Optional for Gherkin-style)
pip install robotframework-robocop
pip install robotframework-tidy
```
▶️ Menjalankan Test
1. Jalankan Semua Test

```bash
robot tests/checkout_test.robot
```
2. Hasil Test

Output akan muncul sebagai:
- log.html
- report.html
- output.xml

Buka file `log.html` untuk melihat hasil detail eksekusi.

✅ Contoh Skenario Gherkin Style

*** Test Cases ***
Scenario: Buyer successfully checks out a product
    Given User is on the login page
    When User logs in with valid credentials
    And User adds product to cart
    And User proceeds to checkout
    And User fills in checkout information
    Then Checkout is successful and user sees confirmation message

✍️ Test Plan & Test Case
Lihat folder test_plan/ untuk:
- test_plan.md: strategi pengujian
- test_cases.md: tabel test case detail (ID, steps, expected result)
💡 Tips
- Gunakan browser Chrome/Firefox dengan SeleniumLibrary
- Pastikan koneksi internet aktif karena test berjalan secara live di https://www.saucedemo.com

Handle Lert :
 Install : pip install robotframework selenium robotframework-seleniumlibrary

