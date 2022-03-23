*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Login Without Email Address
    Input Text  ${LOGIN_PASSWORD_TEXTFIELD}  ${username}  clear
    click button  ${LOGIN_BUTTON}
    ${error_message_text}=  Get Error Message
    should contain  ${error_message_text}  Username is required

Login With Unexisting Account
    Input Text  ${LOGIN_USERNAME_TEXTFIELD}  ${invalid_username}  clear
    Input Text  ${LOGIN_PASSWORD_TEXTFIELD}  ${username}  clear
    click button  ${LOGIN_BUTTON}
    ${error_message_text}=  Get Error Message
    should contain  ${error_message_text}  Invalid username

Login Without Password
    Input Text  ${LOGIN_USERNAME_TEXTFIELD}  ${username}  clear
    click button  ${LOGIN_BUTTON}
    ${error_message_text}=  Get Error Message
    should contain  ${error_message_text}  Password is required