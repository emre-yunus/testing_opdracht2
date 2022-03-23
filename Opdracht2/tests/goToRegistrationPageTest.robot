*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test Go To Registration Page Via Homepage
    Go To Registration Page
    ${text}=  get text  xpath://h2[@class='signup_h2 text-center my-3']
    Should contain  ${text}  Registratie
    sleep  5s
