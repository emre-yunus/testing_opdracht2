*** Settings ***
Resource  basePage.robot

*** Variables ***
${lidworden_button_element}=  xpath://a[normalize-space()='Lid worden']
${homepage_logo_element}=  xpath://a[@class='navbar-brand navbar_brand']

*** Keywords ***
Go To Registration Page
    click element  ${lidworden_button_element}

Go To Homepage
    click element  ${homepage_logo_element}
