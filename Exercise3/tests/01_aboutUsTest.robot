*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot
Resource  ../pageObjects/OverTweakersPage.robot
Resource  ../pageObjects/OverTweakersPagina.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***
${TEXT_TO_FIND}=  Zo helpen we je om te kiezen en het maximale uit je aankoop te halen.

*** Test Cases ***

#Test About Us Page Contains Expected Text
#    Go To Home
#    ${text}=  Get Smartphones text
#    Should Contain  ${text}  Beste smartphones

#Test Over tweakers Page Contains Expected Text
#    Go To Home
#    Go To Over Tweakers
#    sleep  2s
#
#    ${alinea_text}=  Get Alinea Text
#    should contain  ${alinea_text}  ${TEXT_TO_FIND}

Test Over tweakers Page Bevat Gevraagde Text
    Go To Home
    Go To Over Tweakers

    ${all_text}=  Get All Text On Page
    should contain  ${all_text}  ${TEXT_TO_FIND}

