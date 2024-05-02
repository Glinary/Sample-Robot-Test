*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${website_link}  https://demo.nopcommerce.com/
${xpath_login_navbar}  /html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
${email}  wakanabeglar@gmail.com
${password}  Zaq12wsx
${xpath_login_button}  //*[@id="main"]/div/div/div/div[2]/div[1]/div[2]/form/div[3]/button

*** Test Cases ***
LoginTest
    Open browser  ${website_link}  Chrome
    Click Link  xpath:${xpath_login_navbar}
    Enter login credentials
    Click Element  xpath:${xpath_login_button}
    Close browser

*** Keywords ***
Enter login credentials
    Input Text  id:Email  ${email}
    Input Text  id:Password  ${password}


