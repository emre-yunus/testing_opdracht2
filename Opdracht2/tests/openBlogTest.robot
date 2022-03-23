*** Settings ***
Resource            ../pageObjects/basePage.robot
Resource            ../pageObjects/signInPage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
${navbar_element}=  xpath://span[@class='navbar-toggler-icon']
${service_dropdown_element}=  xpath://a[@id='navbarDropdown']
${blogs_button_element}=  xpath://a[normalize-space()='Blogs']
${textfield_element}=  xpath://input[@id='trefwoord']
${search_button_element}=  xpath://button[@id='searchbutton']
${first_blog_button_element}=  xpath://div[@class='card mt-3']//a

*** Test Cases ***

Open Healthy Eating Blog
    click element  ${navbar_element}
    sleep  3s
    click element  ${service_dropdown_element}
    sleep  3s
    click element  ${blogs_button_element}
    Input Text  ${textfield_element}  healthy eating  clear
    click element  ${search_button_element}
    click element  ${first_blog_button_element}
    ${title}=  get text  xpath://h1[@class='col-auto text-center']
    Should contain  ${title}  Healthy eating