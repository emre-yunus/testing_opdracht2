*** Settings ***
Resource  basePage.robot

*** Variables ***
${alinea}=  xpath://p[contains(text(),'Een onafhankelijke expert biedt uitkomst. Daarom i')]

*** Keywords ***

Go To Over Tweakers
    Click Element  css:ul[class='bulletSeparatedList'] li:nth-child(4) a:nth-child(1)

Get Alinea text
    Wait Until Element Is Visible  ${alinea}
    ${alinea_text}=  Get Text  ${alinea}
    [Return]  ${alinea_text}

