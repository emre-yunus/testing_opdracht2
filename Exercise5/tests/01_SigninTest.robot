*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test Invalid Password
    Input Text  ${username_textfield}  ${username_correct}  clear
    Input Text  ${password_textfield}  ${password_incorrect}  clear
    click button  ${login_button}
    ${alert_message_text}=  Get Alert Message Text
    should contain  ${alert_message_text}  Your password is invalid!

Test Invalid Username
    Input Text  ${username_textfield}  ${username_incorrect}  clear
    Input Text  ${password_textfield}  ${password_incorrect}  clear
    click button  ${login_button}
    ${alert_message_text}=  Get Alert Message Text
    should contain  ${alert_message_text}  Your username is invalid!

Test Correct Login
    Input Text  ${username_textfield}  ${username_correct}  clear
    Input Text  ${password_textfield}  ${password_correct}  clear
    click button  ${login_button}
    ${alert_message_text}=  Get Alert Message Text
    should contain  ${alert_message_text}  You logged into a secure area!
    wait until element is visible  ${logout_button}
    click element  ${logout_button}

Test Correct Logout
    Input Text  ${username_textfield}  ${username_correct}  clear
    Input Text  ${password_textfield}  ${password_correct}  clear
    click button  ${login_button}
    wait until element is visible  ${logout_button}
    click element  ${logout_button}
    ${alert_message_text}=  Get Alert Message Text
    should contain  ${alert_message_text}  You logged out of the secure area!