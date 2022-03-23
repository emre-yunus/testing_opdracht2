*** Settings ***
Resource  basePage.robot

*** Variables ***
${ELEMENT_ON_PAGE}=  css:.centeredContent

*** Keywords ***
Get All Text On Page
    Wait Until Element Is Visible  ${ELEMENT_ON_PAGE}
    ${all_text}=  Get Text  ${ELEMENT_ON_PAGE}
    [Return]  ${all_text}