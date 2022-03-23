*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

#Test Setup  Clear Fields

*** Variables ***

*** Test Cases ***

Register Without Email
    clear element text  css:#reg_email
    clear element text  css:#reg_password
    input text  ${REGISTER_PASSWORD_TEXTFIELD}  ${register_password}  clear
    sleep  2s
    input text  ${REGISTER_PASSWORD_TEXTFIELD}  ${register_password}  clear
    click button  ${REGISTER_BUTTON}
    ${error_message_text}=  Get Error Message
    should contain  ${error_message_text}  Please provide a valid email address

Register Without Password
    clear element text  css:#reg_email
    clear element text  css:#reg_password
    Input Text  ${REGISTER_EMAIL_TEXTFIELD}  ${email}  clear
    click button  ${REGISTER_BUTTON}
    ${error_message_text}=  Get Error Message
    should contain  ${error_message_text}  Please enter an account password