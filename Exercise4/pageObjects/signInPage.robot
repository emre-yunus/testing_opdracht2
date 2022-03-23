*** Settings ***
Resource  basePage.robot

*** Variables ***

${LOGIN_USERNAME_TEXTFIELD}=  css:#username
${LOGIN_PASSWORD_TEXTFIELD}=  css:#password
${REGISTER_EMAIL_TEXTFIELD}=  css:#reg_email
${REGISTER_PASSWORD_TEXTFIELD}=  css:#reg_password
${LOGIN_BUTTON}=  css:input[value='Login']
${REGISTER_BUTTON}=  css:input[value='Register']

${email}=  testmaildddl@dsfds.ffd
${username}=  testusername
${invalid_username}=  gg
${password}=  testpassword
${register_password}=  cxcxvxcvcxcxvvcx--cxvcxvcxv5_fdsd78885sd44ds

*** Keywords ***
Go To Login Page
    click element css:a[href='http://practice.automationtesting.in/my-account/']

Get Error Message
    wait until element is visible  css:div[id='body'] li:nth-child(1)
    ${error_message_text}=  Get Text  css:div[id='body'] li:nth-child(1)
    [Return]  ${error_message_text}