*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
${navbar_element}=  xpath://span[@class='navbar-toggler-icon']
${signing_button_element}=  xpath://a[@class='navbar_navbuttons_btn_login']
${login_button_element}=  xpath://input[@value='log in']
${login_errormessage_element}=  xpath://div[@class='login_errormessage']
${username_textfield_element}=  xpath://input[@id='username']
${password_textfield_element}=  xpath://input[@id='password']

${username}=  johnSmith
${password}=  password1234
${errormessage}=  Inloggen mislukt: controleer of je gebruikersnaam en wachtwoord juist zijn.

*** Test Cases ***

Sign In Without Password
    click element  ${navbar_element}
    sleep  3s
    click element  ${signing_button_element}
    sleep  3s
    Input Text  ${username_textfield_element}  ${username}  clear
    click element  ${login_button_element}
    ${element_text_errormessage}=  get text  ${login_errormessage_element}
    Should contain  ${element_text_errormessage}  ${errormessage}

Sign In Without Username
    Go To Homepage
    click element  ${navbar_element}
    sleep  3s
    click element  ${signing_button_element}
    sleep  3s
    Input Text  ${password_textfield_element}  ${password}  clear
    click element  ${login_button_element}
    ${element_text_errormessage}=  get text  ${login_errormessage_element}
    Should contain  ${element_text_errormessage}  ${errormessage}

Sign In With Wrong Credentials
    Go To Homepage
    click element  ${navbar_element}
    sleep  3s
    click element  ${signing_button_element}
    sleep  3s
    Input Text  ${password_textfield_element}  ${password}  clear
    Input Text  ${username_textfield_element}  ${username}  clear
    click element  ${login_button_element}
    ${element_text_errormessage}=  get text  ${login_errormessage_element}
    Should contain  ${element_text_errormessage}  ${errormessage}