*** Settings ***
Resource  basePage.robot

*** Variables ***
${username_textfield}=  css:#username
${password_textfield}=  css:#password
${login_button}=  css:button[type='submit']
${logout_button}=  css:.button.secondary.radius
${alert_message_element}=  css:#flash

${username_correct}=  tomsmith
${username_incorrect}=  tom
${password_correct}=  SuperSecretPassword!
${password_incorrect}=  incorrectPassword

*** Keywords ***
Go To Login Page
    click element  css:a[href='/login']

Get Alert Message Text
    wait until element is visible  ${alert_message_element}
    ${message}=  Get Text  ${alert_message_element}
    [Return]  ${message}


